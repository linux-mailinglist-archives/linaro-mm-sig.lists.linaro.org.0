Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B839B409AD
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  2 Sep 2025 17:49:23 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 315AF45E77
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  2 Sep 2025 15:49:22 +0000 (UTC)
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	by lists.linaro.org (Postfix) with ESMTPS id 9AD4545DD9
	for <linaro-mm-sig@lists.linaro.org>; Tue,  2 Sep 2025 15:47:17 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=PzcOg1ej;
	spf=pass (lists.linaro.org: domain of thierry.reding@gmail.com designates 209.85.128.45 as permitted sender) smtp.mailfrom=thierry.reding@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-45b9853e630so8483585e9.0
        for <linaro-mm-sig@lists.linaro.org>; Tue, 02 Sep 2025 08:47:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1756828036; x=1757432836; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Sg/JpW3SvRZNED9bEp4vwHJ/+yfFIdl8fwvEoOosPbg=;
        b=PzcOg1ejQ2uiexA9ImGerpslyDuRAk8foj6LdQ+AJhCxHvo3KhhdLFqqeiILYkrgZ1
         hzWa3PkX4KtPKDIZsqurhkPBfCFcSMgjXQ5yZXvmL1ggmoWqFFyfVsYZkKtHtGcSLXaM
         y2SvoM5iyOShtg1NWf6BBA2jVBNZBH1mjAgUFG22idlR7CnFWLd307/ZHijODZuWVXcR
         ZwrEyPngCsbDJmp/RyfLecZN1MBbESlEM1EpcOx4bZKonCElmcpJPw98mTWmge/5IiqM
         VSKwKoYXxLS5jfSUQpo0y/AgTcl1VQ59CBfDiOLqvY0dcj9j0Ho/2+S7QQ7DpvZLdHsy
         +HIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756828036; x=1757432836;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Sg/JpW3SvRZNED9bEp4vwHJ/+yfFIdl8fwvEoOosPbg=;
        b=sr/gkUKQAOr9QIYijLXnm5Zw4q2xUShLwNUmoWGUf+17PKV/1orYLTr2gjYX8JV7KD
         BCYKTaBuwOneeRpHg3LFTOWU3o3r6Y/LjmFyhskaqu//d9B7sjtBqs5930d7XmhAdnhN
         LzsEsS1vGWZkqivJDbamp7RkhRuj6NHfz1J2ZGNUs/lZ4B6smnAl4pnUb2NyIQf3sXwR
         bIa1tl9EvuNYjsLIltPlqLLp3/jONOzjNNZnHfSfTvpLiB30rRdASTmUVaklOzzsxVjl
         9yC7ltVovw1SZdhk9CEUZc7oSpVTClxIPIUL6gLGB5uk6tPAWAcji27pleJJbvB/rxG6
         zI7w==
X-Forwarded-Encrypted: i=1; AJvYcCUda1GaRH8JL3BDVGc5IA6AXayBYKgUqaIexbWj82PZnmVIxrurAeBlXqPcyvmKIISzPGVPa4jPWfy0AUSc@lists.linaro.org
X-Gm-Message-State: AOJu0YxoS+Bkbm4cOBpn1UPFNIYiGeyxVPD+xseECKJBpRKfDZ+WGbQW
	FTjjgOkI/27BL9nQjI8AoNR6AZk2HprluFcsdr43hSb16cMowTepftDS
X-Gm-Gg: ASbGncsGOGrPUR3DWofgIsA98SVIglf/qUuBZm0IVS086JQD0m2YNHccGpaAsX5cjHi
	e3F/9H7ERug+m6k+REVHoK7Y1FUe4xfxRR8e/L4jxdGbaooduTqNY2VWsqUlr/Lkm0wQMDgS4U/
	SlUrehh1/PU5oAXSbw/dw9CW4pwwUFNtADBL6TUQgIcOejaE7tnxFw15I903qb8KoPGpD9mze8l
	1B4HorVx72H/XUb1V9Gl/Us9+2R18utE1Rvu7YBYqRmQFEvjS5nUrD0xWbSny7O6R0qZAPupLgO
	l+j2mfyb//OM7P8tIPLJLBBakG2O8rZOlk4fDmo6SZgmh9un37mCRQoXQ8qR08hV7WlDpaJLzas
	fjd1KvDzug0TmKq1A2cu8eREtbiNF54dJyKFpYxQvMKFz3SvARlEdXA428EUviTrtSRUTzYeOeL
	9UN1pdS3UNYYS/zw7Nl5qtko5z
X-Google-Smtp-Source: AGHT+IG6QkcfvyEfQHcIkt21AHSSn0KPT2FNEyPTNaag6qHbdAblJtYW9hhT/NvtJKA8YQoxfOyM0A==
X-Received: by 2002:a05:6000:2011:b0:3c7:36f3:c352 with SMTP id ffacd0b85a97d-3d1df444ad2mr8516244f8f.59.1756828036486;
        Tue, 02 Sep 2025 08:47:16 -0700 (PDT)
Received: from localhost (p200300e41f1c4d00f22f74fffe1f3a53.dip0.t-ipconnect.de. [2003:e4:1f1c:4d00:f22f:74ff:fe1f:3a53])
        by smtp.gmail.com with UTF8SMTPSA id ffacd0b85a97d-3d0f85c287fsm18228079f8f.52.2025.09.02.08.47.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Sep 2025 08:47:13 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Sumit Semwal <sumit.semwal@linaro.org>
Date: Tue,  2 Sep 2025 17:46:29 +0200
Message-ID: <20250902154630.4032984-10-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.50.0
In-Reply-To: <20250902154630.4032984-1-thierry.reding@gmail.com>
References: <20250902154630.4032984-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 9AD4545DD9
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
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.45:from];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	FROM_HAS_DN(0.00)[]
Message-ID-Hash: PI4SMSEM4LNR75HX2JQ464NBADIQVODC
X-Message-ID-Hash: PI4SMSEM4LNR75HX2JQ464NBADIQVODC
X-MailFrom: thierry.reding@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>, Andrew Morton <akpm@linux-foundation.org>, David Hildenbrand <david@redhat.com>, Mike Rapoport <rppt@kernel.org>, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-tegra@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-mm@kvack.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 9/9] arm64: tegra: Hook up VPR to the GPU
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/PI4SMSEM4LNR75HX2JQ464NBADIQVODC/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

From: Thierry Reding <treding@nvidia.com>

The GPU needs to be idled before the VPR can be resized and unidled
afterwards. Associate it with the VPR using the standard memory-region
device tree property.

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 arch/arm64/boot/dts/nvidia/tegra234.dtsi | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/boot/dts/nvidia/tegra234.dtsi b/arch/arm64/boot/dts/nvidia/tegra234.dtsi
index 0b9c2e1b47d2..98d87144a2e4 100644
--- a/arch/arm64/boot/dts/nvidia/tegra234.dtsi
+++ b/arch/arm64/boot/dts/nvidia/tegra234.dtsi
@@ -5280,6 +5280,9 @@ gpu@17000000 {
 			 <&bpmp TEGRA234_CLK_GPC1CLK>;
 		clock-names = "sys", "gpc0", "gpc1";
 		resets = <&bpmp TEGRA234_RESET_GPU>;
+
+		memory-region-names = "vpr";
+		memory-region = <&vpr>;
 	};
 
 	sram@40000000 {
-- 
2.50.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
