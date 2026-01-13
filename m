Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qPAgD4QL4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:17:08 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id CE76E411867
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:17:07 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DFAF7404DF
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:17:06 +0000 (UTC)
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	by lists.linaro.org (Postfix) with ESMTPS id 7AF2040153
	for <linaro-mm-sig@lists.linaro.org>; Tue, 13 Jan 2026 17:44:49 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	dmarc=none;
	spf=pass (lists.linaro.org: domain of tomeu.vizoso@gmail.com designates 209.85.218.41 as permitted sender) smtp.mailfrom=tomeu.vizoso@gmail.com
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-b8710c9cddbso396545266b.2
        for <linaro-mm-sig@lists.linaro.org>; Tue, 13 Jan 2026 09:44:49 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768326288; x=1768931088;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=s8k0pXMV1y8Iq4ImwhXf2ahDkvy9IQZJDHOXmgWjWKM=;
        b=U09JJJINfjldUQ5VA2gsoXxJFX1UURLRCJIxqNAYM6xuipEnDP/50r1aGBqiGuyqNG
         EJIaNoQ97k4GLGt8tldw0jSIQanwVWEl/Dkva/QgjgHJHNvDrNRQjHEtQxMZgG9+MVUR
         orWoDJHDeA2pgnNsXIUXaiXa6hqWQcnz8OjGrMLE6p3U7Katx/fmUJz7xYBhuwt79ala
         sShdl7QmcSsiSTiUcoDB0hb8/XXZoPhWOuPo+qRe7eWd8B52I+kPKa2RtE6pE0Jp7WBO
         i2bsHZl5amFygM2mhwZ9Tw8vHNSYNZIuuh3fR0BJ+NkqJJvMr/iO/Qbakl1XOV3TJqSV
         M/PQ==
X-Forwarded-Encrypted: i=1; AJvYcCWTJQQAm6V7XJQsVeGgGOvs6pujZMMOIwYxrHj+57eIWLBRT0dY1imymh5/5TB930+MgEq86N/vfgEJdklb@lists.linaro.org
X-Gm-Message-State: AOJu0Yxyyv79xxZEmj96RwyOoMSJO7vXt3ayYMvdks3ha6WrZnXvZD6y
	R3VgmCfVjaSjulY36ch54qzJIoqYh7hhZGCycsOFhDPVBp4dQH/KCaCL
X-Gm-Gg: AY/fxX7r6glePw/CuafTNgUioQh5r0ccyukyM4TbgJxAaXOFbmCFqQRQRCefe/HiAly
	eW+N4deVFNyo5saqsrJfML/4i0nzpAERzuDTF3HteCswVn/oqDHKok7kbG+XJB22q1HCCmLq1Nn
	pERfL7feubGDNBbAQyMZ2QxynfFkTK/pAwQQ6SSlG5gXXeQ1Ja3CTm5C54aHdck7yobNtuAxs7b
	Vby4PIXN3yUrtar9l4rAa0FyMi0Raje2B3qGsWbTEHNWGJdSNqlIVU3c701ii52MkX7VCIgrq2c
	mW9nj3q/5F/iy1SfejmQRMFrubOLdItZuifMkMq+ZvZ5gAne3YCFkATkB00FXq0NoqF3fXV5jRf
	+JMqT47kOe1QPx4ThhxsF0dWnwaMEPZfXhVliHrOryno8tlv9XWBzJ1kj+InMF16IYSBq8Bi5HI
	3ssXNi4n9F+djVBJaZgfkjz/CdfzBdeDvtUFQj28oSibixmQ==
X-Google-Smtp-Source: AGHT+IE2YWlpMgqpFTSUm4yiwlEdYSG2L29zcJaQPD88F1bJ4MCCWbGfpor4ndxKjRsmJ+9m366jmQ==
X-Received: by 2002:a17:907:7282:b0:b87:892:f440 with SMTP id a640c23a62f3a-b8708930758mr832434466b.38.1768326288113;
        Tue, 13 Jan 2026 09:44:48 -0800 (PST)
Received: from [10.42.0.1] (cst-prg-36-231.cust.vodafone.cz. [46.135.36.231])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6507be655aesm20873259a12.17.2026.01.13.09.44.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Jan 2026 09:44:47 -0800 (PST)
From: Tomeu Vizoso <tomeu@tomeuvizoso.net>
Date: Tue, 13 Jan 2026 18:44:35 +0100
MIME-Version: 1.0
Message-Id: <20260113-thames-v1-1-99390026937c@tomeuvizoso.net>
References: <20260113-thames-v1-0-99390026937c@tomeuvizoso.net>
In-Reply-To: <20260113-thames-v1-0-99390026937c@tomeuvizoso.net>
To: Nishanth Menon <nm@ti.com>, "Andrew F. Davis" <afd@ti.com>,
 Randolph Sapp <rs@ti.com>, Jonathan Humphreys <j-humphreys@ti.com>,
 Andrei Aldea <a-aldea@ti.com>, Chirag Shilwant <c-shilwant@ti.com>,
 Vignesh Raghavendra <vigneshr@ti.com>, Tero Kristo <kristo@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Oded Gabbay <ogabbay@kernel.org>,
 Jonathan Corbet <corbet@lwn.net>, Sumit Semwal <sumit.semwal@linaro.org>,
 =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Mailer: b4 0.14.2
X-Spamd-Bar: ---
X-MailFrom: tomeu.vizoso@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: ZBTFUJ3A7A2TZ7CJ2VW6ZICDDB3RDFKQ
X-Message-ID-Hash: ZBTFUJ3A7A2TZ7CJ2VW6ZICDDB3RDFKQ
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:11:53 +0000
CC: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Tomeu Vizoso <tomeu@tomeuvizoso.net>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 1/5] arm64: dts: ti: k3-j722s-ti-ipc-firmware: Add memory pool for DSP i/o buffers
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ZBTFUJ3A7A2TZ7CJ2VW6ZICDDB3RDFKQ/>
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
	DATE_IN_PAST(1.00)[2230];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	DMARC_NA(0.00)[tomeuvizoso.net];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[23];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,tomeuvizoso.net:mid,tomeuvizoso.net:email,linaro.org:email,a4000000:email]
X-Rspamd-Queue-Id: CE76E411867
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
