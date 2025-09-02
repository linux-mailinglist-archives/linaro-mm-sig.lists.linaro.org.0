Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 530D4B40987
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  2 Sep 2025 17:47:23 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 78C8045E6E
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  2 Sep 2025 15:47:22 +0000 (UTC)
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	by lists.linaro.org (Postfix) with ESMTPS id 1FCDE45DD9
	for <linaro-mm-sig@lists.linaro.org>; Tue,  2 Sep 2025 15:46:49 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=nKm4DNM5;
	spf=pass (lists.linaro.org: domain of thierry.reding@gmail.com designates 209.85.128.44 as permitted sender) smtp.mailfrom=thierry.reding@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-45b7d485173so34895245e9.0
        for <linaro-mm-sig@lists.linaro.org>; Tue, 02 Sep 2025 08:46:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1756828008; x=1757432808; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=h4LUm3xzftHp/xE2ENw2BOhVhXc1ZcghNq/wiRAVNUo=;
        b=nKm4DNM5qnrlAZeQWXVUrPSACsZYf9gpkC9hvA4SjtJmW3igekiwqFzDgHPC6tL0xy
         RV8XrLjxtQAwWwYl+bY6oWAVmzJ5LWHRFGwV60UJRreKdQcdPbiR0ULxEkJeZcZDNCdN
         Hn1ifkxmXjPvzUhEMfK2bjg/F9ebM8oWfr6DmMNSuqdQQYyUFe+mByy+gANluPYikZsp
         g7sdEr1zC0CcHQTdUFztOZzxntDZCF4awFj0QBFTdnxW93mGSj8OsqOI2EYh/cTnwSO5
         Iw0sWr8E2MI+U8W+eEE4PU2Bivmg9DW8m1l6Mei+kAsooyvb/OBY5jFdP8X1OIK9WHtU
         eaxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756828008; x=1757432808;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=h4LUm3xzftHp/xE2ENw2BOhVhXc1ZcghNq/wiRAVNUo=;
        b=XaSiVCXLcqnam+jAF5jI79/IuiqcGCbqbAkFmNFz/1jz1biM5PPuMcVYE/acRWT1eX
         /mEl0VnjG9/exUdblTqIctl1BELZpQmMKIGve0vsxtSyvVtyqFY9MvboFDibzFsScpB8
         BPATIPzDs4dBqeO2nC2LvW+t1wL0X4OzxOara0YzUh6X0+5xGsnIy0AJHelj+Azk0/EK
         SqumvF5JK8yXmjlNv8K80B8qrvyfSpb9hF+zDV7yZ/52xSbTU9jWihMpYoxPUvvbK9qF
         i2/64/3xFxIpCky/fhDOM/U+/L4XewuSaTCsj9oS9hhECOHJ7LyWCn9CX9fpWTrX+bAB
         puJw==
X-Forwarded-Encrypted: i=1; AJvYcCXGCu/13cmhxjugBp77DgyszYY6ZOysDw5Al3rNMnb6vx3mDSvuzTMyY0uJZLexmDQB9o5Ep+Yls8yx7crg@lists.linaro.org
X-Gm-Message-State: AOJu0YyNgPUyLNQqF2UY4zBrWAT9JpgNzzOq5IelbxjNmrRAmzUx1FTU
	fxx+64SHaGZnE57a49WH5XI7XrYLmUN0b3mYM/RfVEjkwsN2h4Nc2K+g
X-Gm-Gg: ASbGnct4/PAAJd5WjnW7G03sKE6duiffle6PV0kK1TH2A+yp5KfCuR6Nzn05mz2O8ZA
	pC2o8anq6I5PDlp7U8tqZ7jgNIMQp/V8sh6d3UoG1+WFi9hiaWT67yzVHneLYdsQvRNwiuSO7DZ
	LAvi+7LIPhgPeTVQ0Fc2arq6CqvLKj1gJRUnIo6TRoxJIMiujRyu/exU93pmAaZ7K/Ett6i2S3K
	YJ30drkqQldc85uFJV1G1l9gNJiQENenGlDGex/G59TYthKGH31eQ7mM36bBWBbTMLDhhpkMs2N
	qGxSyGM1v4srgZcRSZanqGx/BoaumAkb1HERInbglJY2XNjEar4xkwxRK94ullODiSqIsqQJaem
	+7hCbJvHzCWTM5or9Tw6k+78jfMNLFiMZ2tH3KxLjwc2G47ZP5T+RZ3ojIsnxVrnmhIajokr/j+
	P9f+frHKjIYVfKfg==
X-Google-Smtp-Source: AGHT+IH1ceyRh0TFSkY7cElx5alHVXNEHIyhpSLS5qn4WT0MeK4fu88w2CD9wveL/P6+3CQyGvCJWA==
X-Received: by 2002:a05:600c:1f94:b0:45b:772b:12b9 with SMTP id 5b1f17b1804b1-45b855336dcmr103786195e9.15.1756828007780;
        Tue, 02 Sep 2025 08:46:47 -0700 (PDT)
Received: from localhost (p200300e41f1c4d00f22f74fffe1f3a53.dip0.t-ipconnect.de. [2003:e4:1f1c:4d00:f22f:74ff:fe1f:3a53])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-45b7e898b99sm202121435e9.19.2025.09.02.08.46.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Sep 2025 08:46:43 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Sumit Semwal <sumit.semwal@linaro.org>
Date: Tue,  2 Sep 2025 17:46:22 +0200
Message-ID: <20250902154630.4032984-3-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.50.0
In-Reply-To: <20250902154630.4032984-1-thierry.reding@gmail.com>
References: <20250902154630.4032984-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 1FCDE45DD9
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
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.44:from];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	FROM_HAS_DN(0.00)[]
Message-ID-Hash: OHL4QJWSPRI2JH7JELTN7DLEETBNXCJK
X-Message-ID-Hash: OHL4QJWSPRI2JH7JELTN7DLEETBNXCJK
X-MailFrom: thierry.reding@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>, Andrew Morton <akpm@linux-foundation.org>, David Hildenbrand <david@redhat.com>, Mike Rapoport <rppt@kernel.org>, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-tegra@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-mm@kvack.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 2/9] dt-bindings: display: tegra: Document memory regions
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/OHL4QJWSPRI2JH7JELTN7DLEETBNXCJK/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

From: Thierry Reding <treding@nvidia.com>

Add the memory-region and memory-region-names properties to the bindings
for the display controllers and the host1x engine found on various Tegra
generations. These memory regions are used to access firmware-provided
framebuffer memory as well as the video protection region.

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 .../bindings/display/tegra/nvidia,tegra186-dc.yaml     | 10 ++++++++++
 .../bindings/display/tegra/nvidia,tegra20-dc.yaml      | 10 +++++++++-
 .../bindings/display/tegra/nvidia,tegra20-host1x.yaml  |  7 +++++++
 3 files changed, 26 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/display/tegra/nvidia,tegra186-dc.yaml b/Documentation/devicetree/bindings/display/tegra/nvidia,tegra186-dc.yaml
index ce4589466a18..881bfbf4764d 100644
--- a/Documentation/devicetree/bindings/display/tegra/nvidia,tegra186-dc.yaml
+++ b/Documentation/devicetree/bindings/display/tegra/nvidia,tegra186-dc.yaml
@@ -57,6 +57,16 @@ properties:
       - const: dma-mem # read-0
       - const: read-1
 
+  memory-region:
+    minItems: 1
+    maxItems: 2
+
+  memory-region-names:
+    items:
+      enum: [ framebuffer, protected ]
+    minItems: 1
+    maxItems: 2
+
   nvidia,outputs:
     description: A list of phandles of outputs that this display
       controller can drive.
diff --git a/Documentation/devicetree/bindings/display/tegra/nvidia,tegra20-dc.yaml b/Documentation/devicetree/bindings/display/tegra/nvidia,tegra20-dc.yaml
index 69be95afd562..a012644eeb7d 100644
--- a/Documentation/devicetree/bindings/display/tegra/nvidia,tegra20-dc.yaml
+++ b/Documentation/devicetree/bindings/display/tegra/nvidia,tegra20-dc.yaml
@@ -65,7 +65,15 @@ properties:
     items:
       - description: phandle to the core power domain
 
-  memory-region: true
+  memory-region:
+    minItems: 1
+    maxItems: 2
+
+  memory-region-names:
+    items:
+      enum: [ framebuffer, protected ]
+    minItems: 1
+    maxitems: 2
 
   nvidia,head:
     $ref: /schemas/types.yaml#/definitions/uint32
diff --git a/Documentation/devicetree/bindings/display/tegra/nvidia,tegra20-host1x.yaml b/Documentation/devicetree/bindings/display/tegra/nvidia,tegra20-host1x.yaml
index 3563378a01af..f45be30835a8 100644
--- a/Documentation/devicetree/bindings/display/tegra/nvidia,tegra20-host1x.yaml
+++ b/Documentation/devicetree/bindings/display/tegra/nvidia,tegra20-host1x.yaml
@@ -96,6 +96,13 @@ properties:
     items:
       - description: phandle to the HEG or core power domain
 
+  memory-region:
+    maxItems: 1
+
+  memory-region-names:
+    items:
+      - const: protected
+
 required:
   - compatible
   - interrupts
-- 
2.50.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
