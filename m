Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KFiNKcEL4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:18:09 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A7D04118C8
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:18:09 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6C9DE404F1
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:18:08 +0000 (UTC)
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	by lists.linaro.org (Postfix) with ESMTPS id 5BCD040175
	for <linaro-mm-sig@lists.linaro.org>; Wed, 14 Jan 2026 08:47:16 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	dmarc=none;
	spf=pass (lists.linaro.org: domain of tomeu.vizoso@gmail.com designates 209.85.208.53 as permitted sender) smtp.mailfrom=tomeu.vizoso@gmail.com
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-64b8123c333so13483320a12.3
        for <linaro-mm-sig@lists.linaro.org>; Wed, 14 Jan 2026 00:47:16 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768380435; x=1768985235;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=s8k0pXMV1y8Iq4ImwhXf2ahDkvy9IQZJDHOXmgWjWKM=;
        b=BEWtgKWTylBErTgzY6xNeRQPQ63FQ8QFnVlAnG3s4jK4zDPEiK9vSJLazMYq8bemyx
         Vlz7ffqCSQNzE0Rerw1CurZR7sUT3nGqHLaan5OUD2Fa4LvGd0VDXm96/qLikkmoWuj5
         6IVzH63YAVnncKozNU0uZRC/mZctRZsqT8MvxkRIC6frsHn8ExD3fB5rJRwQwY2fdAFZ
         J4BgU52H1+S2S5DCCO2PTuqIuFOUWkivYfjPFxpnc0Dcj07QNi5Rnvv8AiLswRcK9F3t
         6OLVy7xAuSxA7gLjCPbQpzKZAm1lp545V3KzAysUZRNaVz8b9WDRDs3mF/BqXxSPKf53
         iCWA==
X-Forwarded-Encrypted: i=1; AJvYcCUxTHoGxMYsHkxk3F/UWdY0YA0xlwMSMXZA3LEUIIHS0Jr0xQFcRSqy+i7yyONP8E4c9bFeqsCl2oOWAvrU@lists.linaro.org
X-Gm-Message-State: AOJu0Yy11FSjH+FSG4yr8AhlVWQLNRx7BGvog4vUzeazh0XGZgKv+4Ae
	oj4avPSIRdKoQgjK2jqZB9OPF7yVcFfUxSes9jm41oWFTRDVjDy9WYX7
X-Gm-Gg: AY/fxX7YN6oLnaXZHVyO0/o5cXjvkY2LYFyG5W5E22HIMlglvaFB7kPkSqwdz3BV5N6
	3Ds1stWaubxEh///d/0XFvyvdFDFF9+wBiq1WFbQIYuPyNYdJL6TRWRDYan4KY9cel7AWZk1Roh
	a7E7DL+4jMXkn5lPSXXJ0Y7Ofbt2k5Z7xc4NCmS9wQ/rEAxgHjzy1gU8nKPpBnUu13QEQCoAkQ5
	0ysSafLs0vkP8oedJ57OVWZ0nZScbwTTysVH1ToTgVBTMmoc065Gw3fO4MlXpARvARyy4UNYhpS
	I3notXOb/aU7N2QoUzO/f5cvi5J+dEw3DqbjnZn2ioQWLTwdptNVZljPC3q5M+OFRCK8yajbQKq
	ZijqhBzb7KKfWa/jphGgx7UlBKCOvmEHzc+8LNAzMdTnSy3CpL9UBnpDj8ghtl64G09Xw8zC03o
	FFUiZXJlnetJ2sLnwKYC0ZOnRgVPOCwfoAWyl2EaHHiR4Nj32K3fDKoApp
X-Received: by 2002:a05:6402:1474:b0:64b:82c8:e7b7 with SMTP id 4fb4d7f45d1cf-653ec45985emr1298237a12.24.1768380435183;
        Wed, 14 Jan 2026 00:47:15 -0800 (PST)
Received: from [10.42.0.1] (cst-prg-36-231.cust.vodafone.cz. [46.135.36.231])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6507bf6d5d4sm22379136a12.32.2026.01.14.00.47.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Jan 2026 00:47:14 -0800 (PST)
From: Tomeu Vizoso <tomeu@tomeuvizoso.net>
Date: Wed, 14 Jan 2026 09:46:48 +0100
MIME-Version: 1.0
Message-Id: <20260114-thames-v2-1-e94a6636e050@tomeuvizoso.net>
References: <20260114-thames-v2-0-e94a6636e050@tomeuvizoso.net>
In-Reply-To: <20260114-thames-v2-0-e94a6636e050@tomeuvizoso.net>
To: Nishanth Menon <nm@ti.com>, "Andrew F. Davis" <afd@ti.com>,
 Randolph Sapp <rs@ti.com>, Jonathan Humphreys <j-humphreys@ti.com>,
 Andrei Aldea <a-aldea@ti.com>, Chirag Shilwant <c-shilwant@ti.com>,
 Vignesh Raghavendra <vigneshr@ti.com>, Tero Kristo <kristo@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Oded Gabbay <ogabbay@kernel.org>,
 Jonathan Corbet <corbet@lwn.net>, Sumit Semwal <sumit.semwal@linaro.org>,
 =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Robert Nelson <robertcnelson@gmail.com>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>
X-Mailer: b4 0.14.2
X-Spamd-Bar: ---
X-MailFrom: tomeu.vizoso@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: ZWDY4ZZSCHKZBOJSSTGSJ57JBPI67UEG
X-Message-ID-Hash: ZWDY4ZZSCHKZBOJSSTGSJ57JBPI67UEG
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:11:58 +0000
CC: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Tomeu Vizoso <tomeu@tomeuvizoso.net>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v2 1/5] arm64: dts: ti: k3-j722s-ti-ipc-firmware: Add memory pool for DSP i/o buffers
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ZWDY4ZZSCHKZBOJSSTGSJ57JBPI67UEG/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [1.99 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DATE_IN_PAST(1.00)[2215];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	DMARC_NA(0.00)[tomeuvizoso.net];
	FREEMAIL_TO(0.00)[ti.com,kernel.org,lwn.net,linaro.org,amd.com,gmail.com,ffwll.ch,linux.intel.com,suse.de];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[29];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.996];
	FROM_NEQ_ENVFROM(0.00)[tomeu@tomeuvizoso.net,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email,tomeuvizoso.net:mid,tomeuvizoso.net:email,a4000000:email,a3100000:email]
X-Rspamd-Queue-Id: 5A7D04118C8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This memory region is used by the DRM/accel driver to allocate addresses
for buffers that are used for communication with the DSP cores and for
their intermediate results.

Signed-off-by: Tomeu Vizoso <tomeu@tomeuvizoso.net>
---
 arch/arm64/boot/dts/ti/k3-j722s-ti-ipc-firmware.dtsi | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/ti/k3-j722s-ti-ipc-firmware.dtsi b/arch/arm64/boot/dts/ti/k3-j722s-ti-ipc-firmware.dtsi
index 3fbff927c4c08bce741555aa2753a394b751144f..b80d2a5a157ad59eaed8e57b22f1f4bce4765a85 100644
--- a/arch/arm64/boot/dts/ti/k3-j722s-ti-ipc-firmware.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j722s-ti-ipc-firmware.dtsi
@@ -42,6 +42,11 @@ c7x_0_memory_region: memory@a3100000 {
 		no-map;
 	};
 
+	c7x_iova_pool: iommu-pool@a7000000 {
+		reg = <0x00 0xa7000000 0x00 0x18200000>;
+		no-map;
+	};
+
 	c7x_1_dma_memory_region: memory@a4000000 {
 		compatible = "shared-dma-pool";
 		reg = <0x00 0xa4000000 0x00 0x100000>;
@@ -151,13 +156,15 @@ &main_r5fss0_core0 {
 &c7x_0 {
 	mboxes = <&mailbox0_cluster2 &mbox_c7x_0>;
 	memory-region = <&c7x_0_dma_memory_region>,
-			<&c7x_0_memory_region>;
+			<&c7x_0_memory_region>,
+			<&c7x_iova_pool>;
 	status = "okay";
 };
 
 &c7x_1 {
 	mboxes = <&mailbox0_cluster3 &mbox_c7x_1>;
 	memory-region = <&c7x_1_dma_memory_region>,
-			<&c7x_1_memory_region>;
+			<&c7x_1_memory_region>,
+			<&c7x_iova_pool>;
 	status = "okay";
 };

-- 
2.52.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
