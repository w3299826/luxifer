version:'2'
services:
  aj:
    cpu_limit: '1'
    cpu_reservation: '0'
    depends_on:
    - eureka
    - zipkin
    environment:
    - DB_HOST=172.18.15.83
    - DB_PORT=5000
    - DB_USER=sa
    - DB_PASSWORD=release@6789
    - AJ_PORT=8769
    - EUREKA_URL=http://eureka:8761/eureka/
    - ZIPKIN_URL=http://zipkin:8766
    - SLEUTH_SAMPLER_PROBABILITY=1
    - UIM_API_URL=http://tap-dev.thunisoft.com/uim-api
    - LOG_LEVEL=info
    image: registry.thunisoft.com:5000/apps/t3-service-aj/api:1.0-123
    mem_limit: 2G
    mem_res: '0'
    volumes:
    - znba-logs:/logs