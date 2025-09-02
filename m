Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 17354B409AB
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  2 Sep 2025 17:49:08 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2C47344A45
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  2 Sep 2025 15:49:07 +0000 (UTC)
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	by lists.linaro.org (Postfix) with ESMTPS id 6679945E78
	for <linaro-mm-sig@lists.linaro.org>; Tue,  2 Sep 2025 15:47:14 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=WmCK3pUg;
	spf=pass (lists.linaro.org: domain of thierry.reding@gmail.com designates 209.85.128.52 as permitted sender) smtp.mailfrom=thierry.reding@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-45b8b25296fso17472885e9.2
        for <linaro-mm-sig@lists.linaro.org>; Tue, 02 Sep 2025 08:47:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1756828033; x=1757432833; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=s4ni6DYQQHBDySZ7UbEZ/7lnZ6pICpjz1prMHmfQhmA=;
        b=WmCK3pUglmk0sbsJg5TvSrfSdH/PKB9ErRDwTtrL7VU/njIiAPKHvj3axYNIq6gtKC
         UMXN2B0HuDNg36gkSD23qk6M8Wg/WwQowKe1TiYI33yCTjIiGHZoBUGfnHRMGpQHiHhA
         wWxKvU/YnHUcxjuuteD1+BVA1Nx9BRi1PkUCO/iWc3UCDtebbfqfOsG8DHMJ4duRjtj4
         qML8YflQnt3BwfjocgAptMcyb6J153AlS1dBSJ8CkrwI9qbBtIl7k2H7SqwIATf2SybN
         2vZsQ33Dz82Cla4/UKHZhaZ20qNXyWOPN/oN0CaNMnIq2maKpsD6QJNhslGHNpY4a5QI
         +4bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756828033; x=1757432833;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=s4ni6DYQQHBDySZ7UbEZ/7lnZ6pICpjz1prMHmfQhmA=;
        b=SJsTlZkfeApAXYxAfmoUglNoIqviqfF2EZhHgAi4XCkOyT9R9cfMtN3Q+iO/E9m0WB
         jEkJkZk/LZ2yVIrBP9Wf4PKIeziAMhpSRmk115dew7b4thucLIVtLy2bTGWQBSktZ/Ez
         LvmW1TjFeBjf95fLjWS6eCCreMYZfr9EGSEGta+fsRax3VYMdsg2P5dlL/r0WmvXL95f
         G65V8Jpe0+wnCzTZxpl7uP5acMkMYh3GDGSrQ/jSmlhzeJQ6QcbmcayowI7OFC5Eaqf9
         wDyQmDURkGYe+qnQMqT6nkQb1UbPdTR3ySSGFXAvzn2H6kcmJBSIRh1hac9nIVbV6KYX
         /V6w==
X-Forwarded-Encrypted: i=1; AJvYcCWS9jYMRNLgSuTpZ8wYpNtJUS54+9WRfQluxnAtpY54zYFmjWHHuhZjYz/4ZASTbepXP36Xuf1zBT3jsNWK@lists.linaro.org
X-Gm-Message-State: AOJu0YzBsojLrVTHjQ7ZJZv9jo2Elow7FL2sjIaUAMjQ0/BTGShSmKTl
	kZcilDlsAJCED+7uCH/a/hkucSPjv179UnVe3rg9wbKXCbSL4DotZVS+
X-Gm-Gg: ASbGnctnOnVa1PrQNVNDjkOMISydaFMXaTDX3cQxQ7LBNF5QBB0/GoABz2pDKRVCqcc
	Ak1iwpwDFUiTbKf/Zd12ZDrOEcH+31ae+liDpFgT6vxvpli8hxfWdlUQLWsDehZD9ur47WVdVKP
	QvxFwWqcud/fcsJVK2aNbR6Blh+Vup6lXU/1skefvBsyWh1SWRbd84Ey0xynUuQUxLl3WOhhczR
	cgIx85FLmVPVguHHZsoWCpFUXAMgsAqAH1x5Ih4eHbpbtFae1BA0MvCRFJxISGFNrvI+DESvJgK
	MQfg3BziGBgtlnbmXz8v1ekFxC39p36J8dLH99Apkh7INU4BSLUT1q6Ir7oCUmYt+llc4B6VIL+
	JrC7rkCwUE2UHRc78+BGDuZK8WrnMeM2EM20oFguheBmyYsNbZgNi8g1/b3mXIiyxwUa+viGeH+
	j6SAS29QMVuEsPxA==
X-Google-Smtp-Source: AGHT+IF6uqhh0MoB6VhNHwPxlLM19ybnZxxGRDzHhQIuurCjTrk9XBgo1dEpxbne5cu5+x+vhkeceQ==
X-Received: by 2002:a05:600c:3b01:b0:45b:88c6:709d with SMTP id 5b1f17b1804b1-45b88c67339mr80656105e9.25.1756828033201;
        Tue, 02 Sep 2025 08:47:13 -0700 (PDT)
Received: from localhost (p200300e41f1c4d00f22f74fffe1f3a53.dip0.t-ipconnect.de. [2003:e4:1f1c:4d00:f22f:74ff:fe1f:3a53])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-45b7e8879cesm201587945e9.12.2025.09.02.08.47.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Sep 2025 08:47:07 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Sumit Semwal <sumit.semwal@linaro.org>
Date: Tue,  2 Sep 2025 17:46:28 +0200
Message-ID: <20250902154630.4032984-9-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.50.0
In-Reply-To: <20250902154630.4032984-1-thierry.reding@gmail.com>
References: <20250902154630.4032984-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 6679945E78
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_TO(0.00)[gmail.com,ffwll.ch,linaro.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[19];
	TAGGED_FROM(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	TAGGED_RCPT(0.00)[dt];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.52:from];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	FROM_HAS_DN(0.00)[]
Message-ID-Hash: B3SWSKANVPR2RQPEUWY2P3EE36BZBTUX
X-Message-ID-Hash: B3SWSKANVPR2RQPEUWY2P3EE36BZBTUX
X-MailFrom: thierry.reding@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>, Andrew Morton <akpm@linux-foundation.org>, David Hildenbrand <david@redhat.com>, Mike Rapoport <rppt@kernel.org>, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-tegra@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-mm@kvack.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 8/9] arm64: tegra: Hook up VPR to host1x
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/B3SWSKANVPR2RQPEUWY2P3EE36BZBTUX/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

From: Thierry Reding <treding@nvidia.com>

The host1x needs access to the VPR region, so make sure to reference it
via the memory-region property.

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 arch/arm64/boot/dts/nvidia/tegra234.dtsi | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/boot/dts/nvidia/tegra234.dtsi b/arch/arm64/boot/dts/nvidia/tegra234.dtsi
index 4f8031055ad0..0b9c2e1b47d2 100644
--- a/arch/arm64/boot/dts/nvidia/tegra234.dtsi
+++ b/arch/arm64/boot/dts/nvidia/tegra234.dtsi
@@ -4414,6 +4414,9 @@ host1x@13e00000 {
 				    <14 &smmu_niso1 TEGRA234_SID_HOST1X_CTX6 1>,
 				    <15 &smmu_niso1 TEGRA234_SID_HOST1X_CTX7 1>;
 
+			memory-region = <&vpr>;
+			memory-region-names = "protected";
+
 			vic@15340000 {
 				compatible = "nvidia,tegra234-vic";
 				reg = <0x0 0x15340000 0x0 0x00040000>;
-- 
2.50.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
