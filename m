Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 752ADB409A2
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  2 Sep 2025 17:48:33 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 985B345F2F
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  2 Sep 2025 15:48:32 +0000 (UTC)
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	by lists.linaro.org (Postfix) with ESMTPS id 7A86545E76
	for <linaro-mm-sig@lists.linaro.org>; Tue,  2 Sep 2025 15:47:02 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b="DLe/2WPb";
	spf=pass (lists.linaro.org: domain of thierry.reding@gmail.com designates 209.85.128.48 as permitted sender) smtp.mailfrom=thierry.reding@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-45b9c35bc0aso4888525e9.2
        for <linaro-mm-sig@lists.linaro.org>; Tue, 02 Sep 2025 08:47:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1756828021; x=1757432821; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kqVDx7JqAPgJ8o1edyCmRNgqjh3YbvmCUsqqhz4V0Ns=;
        b=DLe/2WPbQSyc43rUBhULMSGJu6d+EK0aodBDTCrib1iHM5b9O9zBkjBSDGyOd/4Mia
         GLR18awx4N/cCXIDrjT7F2xpvlQHCiHO4+xMsfVwjiTfvKnr//tcMQ/+Lt+cSYNJ2Wd+
         J3f4KJQeqEWBxc85rF9yvqBBoukoIMi8JXQOA4lMPgwcGEeUhy4MAaot/SfXLJgncepL
         ieSIPPj1YQpvzaNbK78whvmg9C9M9kpsP4Z0cv3LHITU7qCr/C16Dh/SYdexhQgFYIIs
         bjBnE3Mp/fxE6KEE3MJu9EdCnWD0UtMhkNVOA4Ymnv0L2+PUdhesvkE7NYzLciBA3KNg
         nGSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756828021; x=1757432821;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kqVDx7JqAPgJ8o1edyCmRNgqjh3YbvmCUsqqhz4V0Ns=;
        b=ippUIc9k0CEn59VDlI3hWMNjqZjskFtsJ7Qqs6PzMUtorllYUVHlXaqVdKHEyGPGcd
         OSnEisKOVJCoblmNWQ+pwwzaWyShu+iUR0H1zZimWjVH2cu+IiIPhTulS4gxHzN3K9bm
         wsgy5ZJX6S2APQk2m3Mn0YQM9/C2uIVfL92WaZR/79dDpRCtqANYkezeZg7xPtECTenc
         slG4kXuRROvsVLMux2YYobuFcny1LNmbmyk1Yex/iU4k/4G7PpY1hsCeMP9p7gpJSGmo
         4O/DVAuBEfUpOFFD1nstR3lrd+ZiQLBzFQEnOQh4t8/5ctdt0ko2WhI2gv/481OjXKCY
         cUFA==
X-Forwarded-Encrypted: i=1; AJvYcCXK+XoI4bIJRZ9cfVaX1E0fTX+BQH8ZPUXrJBhMl/Mzxhh83H4Piyh9gZ3hRz8GiMKn6kcBpsEVv+8xOSRI@lists.linaro.org
X-Gm-Message-State: AOJu0YzLHs91z+tCMKjv9Eu3wuelYysxk4mFGBC1TKUav2BzbeFy/Dz2
	TqVyKG16R0HYSwKyg8CmXWOfOSul/2eD1u8fCzLx8NKnIQggzBY6bA5N
X-Gm-Gg: ASbGnctzRDkkEIJN7XTW26a8+IDQXcrNiJHbEXrilL0HKaay/8RskEY9EwGRxAMziQn
	gCuZDWylr8CB4JWMFlhqxKTZ+/kjiVslKaYfijriaZE1OMgbQPCJI2GYIRzI7KanpPoUk/y1+tD
	ZJOo2BsGuEOhwhKRCI6IRg4wZlYUcfKSvkC3azltrgkl+oLOlWLojMt0VLaeCJNzeIBWAR6JQfs
	XAvZ40O6foPxt83TJfNLaHDdiosbJIfzpTQ1jZuuM2I0V95S+AhIHQ6b88N4TzazwZubvOzTHEC
	CkIpfOEvmQWcoLb4Rel8EeuH0caSPEvI0kuF1fqYBcGp3Kkusvxf0VyWSyZA1YY0gYvio0trI49
	zdpTInPSceuhbVBE3l7IT/EOHN1SDNhLiGdw+4SgP1qQjIZb3JFOBk/XiwWFGeQOEg+HuS4uf3S
	GQiLNPxA5WCkMo+iO6QmdoTjAM
X-Google-Smtp-Source: AGHT+IGhjQ61sFdI6+vTwemnHBbvz8ZNQ9haJ2DTjk2jvyEjnERfMyfPcIWCXNf5u0RiWSHPgdHosg==
X-Received: by 2002:a05:600c:524b:b0:45b:84f2:76ff with SMTP id 5b1f17b1804b1-45b8549c809mr99393805e9.0.1756828021297;
        Tue, 02 Sep 2025 08:47:01 -0700 (PDT)
Received: from localhost (p200300e41f1c4d00f22f74fffe1f3a53.dip0.t-ipconnect.de. [2003:e4:1f1c:4d00:f22f:74ff:fe1f:3a53])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-45b7e7d2393sm202232315e9.3.2025.09.02.08.47.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Sep 2025 08:47:00 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Sumit Semwal <sumit.semwal@linaro.org>
Date: Tue,  2 Sep 2025 17:46:26 +0200
Message-ID: <20250902154630.4032984-7-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.50.0
In-Reply-To: <20250902154630.4032984-1-thierry.reding@gmail.com>
References: <20250902154630.4032984-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 7A86545E76
X-Spamd-Bar: -
X-Spamd-Result: default: False [-2.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
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
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.48:from];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	FROM_HAS_DN(0.00)[]
Message-ID-Hash: YM4C3H26Y5NEVFUS56SMQDRIUR7PFFGV
X-Message-ID-Hash: YM4C3H26Y5NEVFUS56SMQDRIUR7PFFGV
X-MailFrom: thierry.reding@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>, Andrew Morton <akpm@linux-foundation.org>, David Hildenbrand <david@redhat.com>, Mike Rapoport <rppt@kernel.org>, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-tegra@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-mm@kvack.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 6/9] arm64: tegra: Add VPR placeholder node on Tegra234
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/YM4C3H26Y5NEVFUS56SMQDRIUR7PFFGV/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

From: Thierry Reding <treding@nvidia.com>

This node contains two sets of properties, one for the case where the
VPR is resizable (in which case the VPR region will be dynamically
allocated at boot time) and another case where the VPR is fixed in size
and initialized by early firmware.

The firmware running on the device is responsible for updating the node
with the real physical address for the fixed VPR case and remove the
properties needed only for resizable VPR. Similarly, if the VPR is
resizable, the firmware should remove the "reg" property since it is no
longer needed.

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 arch/arm64/boot/dts/nvidia/tegra234.dtsi | 34 ++++++++++++++++++++++++
 1 file changed, 34 insertions(+)

diff --git a/arch/arm64/boot/dts/nvidia/tegra234.dtsi b/arch/arm64/boot/dts/nvidia/tegra234.dtsi
index df034dbb8285..4d572f5fa0b1 100644
--- a/arch/arm64/boot/dts/nvidia/tegra234.dtsi
+++ b/arch/arm64/boot/dts/nvidia/tegra234.dtsi
@@ -28,6 +28,40 @@ aliases {
 		i2c8 = &dp_aux_ch3_i2c;
 	};
 
+	reserved-memory {
+		#address-cells = <2>;
+		#size-cells = <2>;
+		ranges;
+
+		vpr: video-protection-region@0 {
+			compatible = "nvidia,tegra-video-protection-region";
+			status = "disabled";
+			no-map;
+
+			/*
+			 * Two variants exist for this. For fixed VPR, the
+			 * firmware is supposed to update the "reg" property
+			 * with the fixed memory region configured as VPR.
+			 *
+			 * For resizable VPR we don't care about the exact
+			 * address and instead want a reserved region to be
+			 * allocated with a certain size and alignment at
+			 * boot time.
+			 *
+			 * The firmware is responsible for removing the
+			 * unused set of properties.
+			 */
+
+			/* fixed VPR */
+			reg = <0x0 0x0 0x0 0x0>;
+
+			/* resizable VPR */
+			size = <0x0 0x70000000>;
+			alignment = <0x0 0x100000>;
+			reusable;
+		};
+	};
+
 	bus@0 {
 		compatible = "simple-bus";
 
-- 
2.50.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
