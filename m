Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C555DB409A6
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  2 Sep 2025 17:48:50 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E7C7A45F42
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  2 Sep 2025 15:48:49 +0000 (UTC)
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	by lists.linaro.org (Postfix) with ESMTPS id F1B0145E77
	for <linaro-mm-sig@lists.linaro.org>; Tue,  2 Sep 2025 15:47:07 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=QRZY8pOC;
	spf=pass (lists.linaro.org: domain of thierry.reding@gmail.com designates 209.85.128.51 as permitted sender) smtp.mailfrom=thierry.reding@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-45b79ec2fbeso37672895e9.3
        for <linaro-mm-sig@lists.linaro.org>; Tue, 02 Sep 2025 08:47:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1756828027; x=1757432827; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gR4jf6n49qoeIQa6xtB93bVvXG27Wam54T0FJ3gzKRg=;
        b=QRZY8pOCoMQEooTild3JNX/FHwZDoI2YMrh583wVFJapFIIMFjKffXeWviCxo0aSkW
         dXRIvaYbZR/aEFJnotRdAt1pGmuUjjq6Q7n33lEYmcIcI4P0vhCQypUdIGUuy6Rdtsun
         13Z9qt3VnXOoCrc2tz1Pvts9krEWXBrWdkHiPrVOWSCHTPxhHTpn61j24g4bKo9OI1KB
         Ji62nMS11j8hRBiB7iQWjTDbOUDWRlv9UXjvBZRu2w2ibCW+MBElhi38eDEHJKFjM+h2
         lJPBOSGxcCWVs7yG8Gkcl6q7XGbBGmS3pyRcXpCJHHkfnj3rxwO7GK94jpYtj5dc/lc5
         isaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756828027; x=1757432827;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gR4jf6n49qoeIQa6xtB93bVvXG27Wam54T0FJ3gzKRg=;
        b=JxDWl7EpVRL8dt/6vHKu8jRnQ8MMxCClcrThQ26ggiykD9rSoW+jkjYCqrGJZ3Zz1r
         NgYlCGqQyMk3CsHKhMZfFAHIreQMIVRo05pkSnBeez0D3n/TXk2y5wj+rKyC4xiIWZKI
         AN7rOCmhXaxnHBOlzTdZe022FJ59jirb/6vPaDjjJ6nxfornbo7YWPqsX8DeqPKSzHIA
         3wIqe58BqTfO66oJ29RQ26lQTtzTG/YS0tgeML0ROCfvuCteZKAzCFohzNNHjnojWmbA
         ODcSfFBJWoJLPa3i4QcGFy2WPPNSL6PEZqSIi0MBJK/NCg7WULNXcLyWIaqnCFJEGuYx
         SMDQ==
X-Forwarded-Encrypted: i=1; AJvYcCWMvrZLQZhT5jbkjH1gLtj9d9nW6lplmCbBPSv3dwsQ/kyzBG9AR7OxPgU1RLWuEFvxUPXGC1fPLZ/52ZgI@lists.linaro.org
X-Gm-Message-State: AOJu0YzKjXZYBV0A1Q6tajqBiTPEJ2FoLAefZk4AYdGFFuKkIJ3LXKRj
	1+FmWEHmM1+UDzyZo1WyeN7N8YeNYd0A3bYxu8oI6ogu5O0TZKnef6QK
X-Gm-Gg: ASbGncso3khIbOIbZnIQntmCXIoM7ZGbrdeCSG1R855je56+yaXXHsIZqBfnoR72l8t
	3ShTJZCx0dLnKS0JhbrxPeCW0oxemE2YJDo/TgfjEL91C85Mtfa0DNyo2LXKJ3o+azzxJmjQGcY
	v91ZELwKn0IBZk5v13Ofs4zte5L36Xep8U4ExNvAJxEQtEzURmVZAzT5UCFcGrLnjO8weA0Iuvz
	cLc1gsE4lwZoR/we0dx01WMgE9Z2yL5bT6JmMfglcEYKKicfhZS+X2ckU5f4pVvndxeEgZNg+kY
	eDTXpUXLX5C7ZN06Qfirfkr2iRlk66z6l+C1HPvl5a77TSoijtgP/2u+jI4oT1Y9X1MWiCH4KIw
	SqMVhVBrcnosjI20Rnv7bL3KkkWBDqbRmhZoWQuP9/+N1jwXfLZ5hvJlQv1Go62pEr1f4b2o2oD
	9oPLkU8sapmIbkQw==
X-Google-Smtp-Source: AGHT+IFNHaA5Mk/OTIBuSkxqD2TLa8EhamiFfXy+xcSVyFlskbg2S2fkWFhv/WICHcU/8LVjc1jWCQ==
X-Received: by 2002:a05:600c:524b:b0:45b:8482:b9b9 with SMTP id 5b1f17b1804b1-45b85e429f4mr103133785e9.35.1756828026881;
        Tue, 02 Sep 2025 08:47:06 -0700 (PDT)
Received: from localhost (p200300e41f1c4d00f22f74fffe1f3a53.dip0.t-ipconnect.de. [2003:e4:1f1c:4d00:f22f:74ff:fe1f:3a53])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-45b6b1cdf05sm163708975e9.1.2025.09.02.08.47.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Sep 2025 08:47:01 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Sumit Semwal <sumit.semwal@linaro.org>
Date: Tue,  2 Sep 2025 17:46:27 +0200
Message-ID: <20250902154630.4032984-8-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.50.0
In-Reply-To: <20250902154630.4032984-1-thierry.reding@gmail.com>
References: <20250902154630.4032984-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: F1B0145E77
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
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.51:from];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	FROM_HAS_DN(0.00)[]
Message-ID-Hash: SRFWXLIKPXB67EMTMIZSIPRW5NVZ44IG
X-Message-ID-Hash: SRFWXLIKPXB67EMTMIZSIPRW5NVZ44IG
X-MailFrom: thierry.reding@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>, Andrew Morton <akpm@linux-foundation.org>, David Hildenbrand <david@redhat.com>, Mike Rapoport <rppt@kernel.org>, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-tegra@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-mm@kvack.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 7/9] arm64: tegra: Add GPU node on Tegra234
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/SRFWXLIKPXB67EMTMIZSIPRW5NVZ44IG/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

From: Thierry Reding <treding@nvidia.com>

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 arch/arm64/boot/dts/nvidia/tegra234.dtsi | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/arch/arm64/boot/dts/nvidia/tegra234.dtsi b/arch/arm64/boot/dts/nvidia/tegra234.dtsi
index 4d572f5fa0b1..4f8031055ad0 100644
--- a/arch/arm64/boot/dts/nvidia/tegra234.dtsi
+++ b/arch/arm64/boot/dts/nvidia/tegra234.dtsi
@@ -5262,6 +5262,23 @@ pcie-ep@141e0000 {
 		};
 	};
 
+	gpu@17000000 {
+		compatible = "nvidia,ga10b";
+		reg = <0x0 0x17000000 0x0 0x1000000>,
+		      <0x0 0x18000000 0x0 0x1000000>;
+		interrupts = <GIC_SPI 67 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 68 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 70 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 71 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-names = "nonstall", "stall0", "stall1", "stall2";
+		power-domains = <&bpmp TEGRA234_POWER_DOMAIN_GPU>;
+		clocks = <&bpmp TEGRA234_CLK_GPUSYS>,
+			 <&bpmp TEGRA234_CLK_GPC0CLK>,
+			 <&bpmp TEGRA234_CLK_GPC1CLK>;
+		clock-names = "sys", "gpc0", "gpc1";
+		resets = <&bpmp TEGRA234_RESET_GPU>;
+	};
+
 	sram@40000000 {
 		compatible = "nvidia,tegra234-sysram", "mmio-sram";
 		reg = <0x0 0x40000000 0x0 0x80000>;
-- 
2.50.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
