Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 19D786F55D0
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  3 May 2023 12:18:10 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2822E3F630
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  3 May 2023 10:18:09 +0000 (UTC)
Received: from mail-qv1-f49.google.com (mail-qv1-f49.google.com [209.85.219.49])
	by lists.linaro.org (Postfix) with ESMTPS id 6935D3E923
	for <linaro-mm-sig@lists.linaro.org>; Wed, 19 Apr 2023 00:10:50 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20221208 header.b=TgDPsyZ1;
	spf=pass (lists.linaro.org: domain of justinpopo6@gmail.com designates 209.85.219.49 as permitted sender) smtp.mailfrom=justinpopo6@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-qv1-f49.google.com with SMTP id me15so10791025qvb.4
        for <linaro-mm-sig@lists.linaro.org>; Tue, 18 Apr 2023 17:10:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681863050; x=1684455050;
        h=references:in-reply-to:message-id:date:subject:cc:to:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=e9ELuaxovAZK107S+i/lSGtgzWrNVqegvOgbyEPR6lQ=;
        b=TgDPsyZ1jBiBNae2UNayCnoPatUMqJfdKQIaYymmlbnKkfDWn7HE9FtZXecYXWbvmy
         SQnf87vdKQOotjJz7TvP7+xX0CxpkrcPRr2KjczH43l8fTtM1Hxu+kSBEQIv7nCa8HpS
         9LOzE82ION1FnEzjPGgJ56Y6PfCkbPoHDOiDGgnpA5lQs8RAlFGjlQ1LGyAyCSclQdDM
         UjXmvmNbaBzFgr6dzoHmq9tQrr1GqcAXQp8sa00EnyD4zWpUD3NOw4MzCz4xfVYA3dM7
         YNtWCm2YbSvY7lUCOHADi9FajcLM/l9JPmJoOODkDuk7qpGc2NVo35AZ3HxPLS29MwNO
         2sTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681863050; x=1684455050;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=e9ELuaxovAZK107S+i/lSGtgzWrNVqegvOgbyEPR6lQ=;
        b=KtfxA1GqgwZkzmer/NUj7e047PW+HruY/Ny9d8EQImmyAP9Ws99mQicvcfpVcYyM7V
         OgtkbLDDxYfWftFLKSKx7nvMDkkv/Mmzlegq4191Hf4Mlw2f17BpBptapZd9sNXMh3ST
         eqEWeDYG+c/GnJcO9Qq1cdOvqnPIfVnRqWg0utEJgYrGcdUJ+2r8MsOcq5hoOgrLNveZ
         +h8cJYBRjflPvH3ONX8MYnO5/neXqjihkuUNQp+reLwwa1N9FpXZdTB281pPsohzXZ4h
         gF//waqYsa5QhxigwjvyS9vzYq6EN2NSYVyc9bhTtUxF5gjgaoMXAP7K6x4XIq0rTTAh
         sMQw==
X-Gm-Message-State: AAQBX9cHA8iwmge+XN0S/M0fjhHC1X99CTaxGw3qD+gcjT54YCNK2IVA
	daX4dsKucdYBCp4UZshhzLU=
X-Google-Smtp-Source: AKy350YAySwOPYgIwQnF0LF8BMbshq+v1WxcDSvfQk1fGEMDH6OmZSxu8FMKW47JggpKX+oc+lJmWw==
X-Received: by 2002:a05:6214:20a6:b0:56f:796e:c3a5 with SMTP id 6-20020a05621420a600b0056f796ec3a5mr22713215qvd.4.1681863050059;
        Tue, 18 Apr 2023 17:10:50 -0700 (PDT)
Received: from stbirv-lnx-2.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id d14-20020a37680e000000b0074d1b6a8187sm2639035qkc.130.2023.04.18.17.10.47
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 18 Apr 2023 17:10:49 -0700 (PDT)
From: Justin Chen <justinpopo6@gmail.com>
To: netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org,
	bcm-kernel-feedback-list@broadcom.com
Date: Tue, 18 Apr 2023 17:10:18 -0700
Message-Id: <1681863018-28006-7-git-send-email-justinpopo6@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1681863018-28006-1-git-send-email-justinpopo6@gmail.com>
References: <1681863018-28006-1-git-send-email-justinpopo6@gmail.com>
X-Spamd-Result: default: False [-1.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20221208];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	MIME_GOOD(-0.10)[text/plain];
	TAGGED_RCPT(0.00)[dt];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCPT_COUNT_TWELVE(0.00)[23];
	NEURAL_HAM(-0.00)[-1.000];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FREEMAIL_CC(0.00)[broadcom.com,gmail.com,davemloft.net,google.com,kernel.org,redhat.com,linaro.org,lunn.ch,armlinux.org.uk,amd.com];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.219.49:from];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	DKIM_TRACE(0.00)[gmail.com:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 6935D3E923
X-Spamd-Bar: -
X-MailFrom: justinpopo6@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: A75MHPGAGBDPZI23AH4H3S3BUT3H7BJD
X-Message-ID-Hash: A75MHPGAGBDPZI23AH4H3S3BUT3H7BJD
X-Mailman-Approved-At: Wed, 03 May 2023 10:15:30 +0000
CC: justin.chen@broadcom.com, f.fainelli@gmail.com, davem@davemloft.net, edumazet@google.com, kuba@kernel.org, pabeni@redhat.com, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, opendmb@gmail.com, andrew@lunn.ch, hkallweit1@gmail.com, linux@armlinux.org.uk, richardcochran@gmail.com, sumit.semwal@linaro.org, christian.koenig@amd.com, Justin Chen <justinpopo6@gmail.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH net-next 6/6] MAINTAINERS: ASP 2.0 Ethernet driver maintainers
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/A75MHPGAGBDPZI23AH4H3S3BUT3H7BJD/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Add maintainers entry for ASP 2.0 Ethernet driver.

Signed-off-by: Justin Chen <justinpopo6@gmail.com>
Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
 MAINTAINERS | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 4fc57dfd5fd0..24cbe1c0fc06 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -4189,6 +4189,15 @@ F:	drivers/net/mdio/mdio-bcm-unimac.c
 F:	include/linux/platform_data/bcmgenet.h
 F:	include/linux/platform_data/mdio-bcm-unimac.h
 
+BROADCOM ASP 2.0 ETHERNET DRIVER
+M:	Justin Chen <justinpopo6@gmail.com>
+M:	Florian Fainelli <f.fainelli@gmail.com>
+L:	bcm-kernel-feedback-list@broadcom.com
+L:	netdev@vger.kernel.org
+S:	Supported
+F:	Documentation/devicetree/bindings/net/brcm,asp-v2.0.yaml
+F:	drivers/net/ethernet/broadcom/asp2/
+
 BROADCOM IPROC ARM ARCHITECTURE
 M:	Ray Jui <rjui@broadcom.com>
 M:	Scott Branden <sbranden@broadcom.com>
-- 
2.7.4

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
