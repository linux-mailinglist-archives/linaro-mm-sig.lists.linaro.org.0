Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id B1B21B4097D
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  2 Sep 2025 17:47:02 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D456645774
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  2 Sep 2025 15:47:01 +0000 (UTC)
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	by lists.linaro.org (Postfix) with ESMTPS id 2A5FA45D45
	for <linaro-mm-sig@lists.linaro.org>; Tue,  2 Sep 2025 15:46:44 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=nU6VmTa8;
	spf=pass (lists.linaro.org: domain of thierry.reding@gmail.com designates 209.85.221.52 as permitted sender) smtp.mailfrom=thierry.reding@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-3d1bf79d6afso2378565f8f.3
        for <linaro-mm-sig@lists.linaro.org>; Tue, 02 Sep 2025 08:46:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1756828003; x=1757432803; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9qDZYWOWH5Nm8yxbrqXFYbkGArZ8+SY8u8XQGrfbmV8=;
        b=nU6VmTa8V6yd+ibfsbbsWIBKxWKU+o/pxWsQCKIYULmlrsUMDeP2jYCsoWCyjSQTTd
         xwerdMY+vc62Cfzuz3ThPA+8jrkzka4RlX0I+kNitir+fmjehfSQMbeJL1tDnhimnSWs
         y/PW4GtYgMZf+whcQGPMXuukMqFMNXpfnMv9jwBEnWErkE0IY002rZKWMI/+eLJioP5G
         aY9VyZffxfFHZTWRF14RvP7ugHSPZpuwubPx0Nx6BxLtul/ns+vnPgh24BxxV45KlnIj
         aLZ/WjPZz7QsGF0JUpCAzbzdzJYpyTYSsjxuoQc2bfXeZiojZ2cqfsWLxvW4eMHoWSxf
         F8Ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756828003; x=1757432803;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9qDZYWOWH5Nm8yxbrqXFYbkGArZ8+SY8u8XQGrfbmV8=;
        b=t9/tThAZWl9oHHjaj51HUj9bWHgwdoSBSqmfcCRi+8VsYDzCvUK0yKJcvACBX/24J5
         cGhaEda++IEGaFnlFuM5pfqKAo8xHhOSPdSimGgAii2Vb6VFJ9twZI7CUXF0W8SxlTdu
         kjkuBDGKljXpt+XLWjZhApnSYm2eN4VneGHdnbQeftuna6bKVa31kBPSWcpMn9OvoPb0
         f+fbKzsCqvgrYTPAzzGN3I1RtSTswHJ3pR3XhpEaCnUQI/3JFQ3c1LTrR8nLmbqSVn6P
         zzrPfha0Jf7Y5E881aHgSZVpMBdzSdKqiSxMzFSSFOhvpndyTjH/+emFueeB255VHOMC
         9xnQ==
X-Forwarded-Encrypted: i=1; AJvYcCX39GKpw7M8GhlqkPmsVhoK2UleSP6A6uRjcxBkx1wkj64hSXkVT72u9fvDrDgfpJCPAps6OaJBr6D/zEyT@lists.linaro.org
X-Gm-Message-State: AOJu0Yyo9Pt21Qf8VAU/f3y7SnSnIvE/dRUJ4OWMoO6YvooxjVnc8AKO
	0V5W/SRN5IbIiQ1/ib3myWzKcxPS2ABu5hc+30mHPs0dIqlT79vynVeA
X-Gm-Gg: ASbGnct3sogUAz7Wets2cSn5iCAPJVNrZqLi6+9ln2SNAiw/kzSt2zlx37jnpgiC81m
	/VF4vekvG4wnpmtJxMAfFaAAKO9ecCmyYeDXwKn2x01o6b4VLZeRLnHKPjO3pzke/XRb0tQCaqW
	CIIbhHiOGWyW6TSc2AKIyFYoC6E5NugbAnu+Bkyig7xyxiWYBiTsOnUlnCmU7jjpY6PVLPzjBCi
	BYkP+n+DBBmxz8zJDvm5wdJBNzAGrYzISx5bc9TWq8Kg03qUTwCVGX9Qq8b3G9hWRa4hsWNzajI
	EwQSiAzu/hu0Tqbcoeutw0bMt6+6ibS1REKrp3ncrc2/3OfU8yPWP85wbg+9XYRMaLv3MyQ78Z4
	rLzzFkKaVNeTw8JYvWrTQy7ieasL6Fz2KpAApKFP5p+MuIykvuuDxiM+ibBo6mswoP85tngIoQW
	dnbYEH7U4BtkNhkA==
X-Google-Smtp-Source: AGHT+IFcgEUq9qD0GZO46TpNwavpzh+hTQklCsGnRUm93f3x88gh4dc9vHpbCmQtmoM4+DhaY2NGrQ==
X-Received: by 2002:a05:6000:290b:b0:3c7:df1d:3d9 with SMTP id ffacd0b85a97d-3d1dfa19a4dmr10655884f8f.39.1756828002702;
        Tue, 02 Sep 2025 08:46:42 -0700 (PDT)
Received: from localhost (p200300e41f1c4d00f22f74fffe1f3a53.dip0.t-ipconnect.de. [2003:e4:1f1c:4d00:f22f:74ff:fe1f:3a53])
        by smtp.gmail.com with UTF8SMTPSA id ffacd0b85a97d-3d85f80d8casm6829077f8f.54.2025.09.02.08.46.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Sep 2025 08:46:38 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Sumit Semwal <sumit.semwal@linaro.org>
Date: Tue,  2 Sep 2025 17:46:21 +0200
Message-ID: <20250902154630.4032984-2-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.50.0
In-Reply-To: <20250902154630.4032984-1-thierry.reding@gmail.com>
References: <20250902154630.4032984-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 2A5FA45D45
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
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.221.52:from];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	FROM_HAS_DN(0.00)[]
Message-ID-Hash: ZVMQZAD3K6YUNCNFO4NFL7UI4STXM7WG
X-Message-ID-Hash: ZVMQZAD3K6YUNCNFO4NFL7UI4STXM7WG
X-MailFrom: thierry.reding@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>, Andrew Morton <akpm@linux-foundation.org>, David Hildenbrand <david@redhat.com>, Mike Rapoport <rppt@kernel.org>, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-tegra@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-mm@kvack.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 1/9] dt-bindings: reserved-memory: Document Tegra VPR
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ZVMQZAD3K6YUNCNFO4NFL7UI4STXM7WG/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

From: Thierry Reding <treding@nvidia.com>

The Video Protection Region (VPR) found on NVIDIA Tegra chips is a
region of memory that is protected from CPU accesses. It is used to
decode and play back DRM protected content.

It is a standard reserved memory region that can exist in two forms:
static VPR where the base address and size are fixed (uses the "reg"
property to describe the memory) and a resizable VPR where only the
size is known upfront and the OS can allocate it wherever it can be
accomodated.

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 .../nvidia,tegra-video-protection-region.yaml | 55 +++++++++++++++++++
 1 file changed, 55 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/reserved-memory/nvidia,tegra-video-protection-region.yaml

diff --git a/Documentation/devicetree/bindings/reserved-memory/nvidia,tegra-video-protection-region.yaml b/Documentation/devicetree/bindings/reserved-memory/nvidia,tegra-video-protection-region.yaml
new file mode 100644
index 000000000000..c13292a791bb
--- /dev/null
+++ b/Documentation/devicetree/bindings/reserved-memory/nvidia,tegra-video-protection-region.yaml
@@ -0,0 +1,55 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/reserved-memory/nvidia,tegra-video-protection-region.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: NVIDIA Tegra Video Protection Region (VPR)
+
+maintainers:
+  - Thierry Reding <thierry.reding@gmail.com>
+  - Jon Hunter <jonathanh@nvidia.com>
+
+description: |
+  NVIDIA Tegra chips have long supported a mechanism to protect a single,
+  contiguous memory region from non-secure memory accesses. Typically this
+  region is used for decoding and playback of DRM protected content. Various
+  devices, such as the display controller and multimedia engines (video
+  decoder) can access this region in a secure way. Access from the CPU is
+  generally forbidden.
+
+  Two variants exist for VPR: one is fixed in both the base address and size,
+  while the other is resizable. Fixed VPR can be described by just a "reg"
+  property specifying the base address and size, whereas the resizable VPR
+  is defined by a size/alignment pair of properties. For resizable VPR the
+  memory is reusable by the rest of the system when it's unused for VPR and
+  therefore the "reusable" property must be specified along with it. For a
+  fixed VPR, the memory is permanently protected, and therefore it's not
+  reusable and must also be marked as "no-map" to prevent any (including
+  speculative) accesses to it.
+
+allOf:
+  - $ref: reserved-memory.yaml
+
+properties:
+  compatible:
+    const: nvidia,tegra-video-protection-region
+
+dependencies:
+  size: [alignment, reusable]
+  alignment: [size, reusable]
+  reusable: [alignment, size]
+
+  reg: [no-map]
+  no-map: [reg]
+
+unevaluatedProperties: false
+
+oneOf:
+  - required:
+      - compatible
+      - reg
+
+  - required:
+      - compatible
+      - size
-- 
2.50.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
