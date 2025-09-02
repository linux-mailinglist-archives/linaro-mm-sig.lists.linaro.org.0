Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id CE8ADB40974
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  2 Sep 2025 17:46:47 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 318DE45E6F
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  2 Sep 2025 15:46:46 +0000 (UTC)
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	by lists.linaro.org (Postfix) with ESMTPS id EE07044668
	for <linaro-mm-sig@lists.linaro.org>; Tue,  2 Sep 2025 15:46:38 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=B1wXpvqx;
	spf=pass (lists.linaro.org: domain of thierry.reding@gmail.com designates 209.85.128.48 as permitted sender) smtp.mailfrom=thierry.reding@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-45b7d497abaso36766435e9.0
        for <linaro-mm-sig@lists.linaro.org>; Tue, 02 Sep 2025 08:46:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1756827998; x=1757432798; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Ehw/eR0F2M+6G/BFd9v/1nkHSYwDgsa32Hkiapct/js=;
        b=B1wXpvqxEmz3PNUTzVU+HDTzd7qxZ5tfpc/V8EH4Ai6YNwXz2N7Rt4XesOQj8lN6EX
         0KznRk3JHv50gtC26cKXdJ1LG4/eHhYuR7YO6GnYAB7uEuIINLOfrOcg/4KsDHSXDYTP
         oDpRr4kuOxSmlOkD0j+rR5oewlKgNGzYaq1BDPQVSsuNLHamDnprkcaNLpQ3n1/DOZHX
         H3mq0Oo9RySaIqBU7jChu61ffQEWF1pHy9ThwICNhlDr6V6Pcn3kuknzfVhGFBIZmwZF
         PsT5L44ch6IKwaW2ABwlx81MHIUofKCgIqoCHXydVPmerIFNnhDTkGw8dNlh/tqtiFU3
         hOWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756827998; x=1757432798;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ehw/eR0F2M+6G/BFd9v/1nkHSYwDgsa32Hkiapct/js=;
        b=w6DG7snBme4h7TTmCIfNv98TOGARVvuvGDkdIUaXOf3T9faDAxq4jiOyj81/j2xFDA
         a7sF5Xu8xXuP/Tr340YvF0LTZ1C7Hrnjl8Oopt4jKNMmyo3ZmR5+aE6jXf4vWR/Pm3pb
         g5o2Vlc7PjAxFe/h0CzMCFW8WBaJ37jBzlQFhJGsRMEMAnGe0tni5t9z44B7QMjSaXhF
         7CevU8cjdOWOxa/GtQF/UisCJ/r3ElqIvcIEwP48yQzQOXFRft8igKgUm8kUcaAveyh3
         CZ873rQ5iRyV5LnFYdNvRPLoPwm3SmPr5c9+aIgbjJcDg+KNcVeqt3p85aaHECyB0d+y
         4VQg==
X-Forwarded-Encrypted: i=1; AJvYcCUZHiMxv8ADTE+wpSn6BNIiv6m/E0McoJsqwOBndpb/bGm20QxvYylAhd/gXSRMyPJhLy9AtC3k6mvd+yi0@lists.linaro.org
X-Gm-Message-State: AOJu0YxC4P76FKTS8Hi+aOJiydaCpJvaXO6YM7SnyHJcQynaU+71M+ZX
	5scKm3NwcjJ7IOHED7rXZGf7dsXciB0MlQu5EDa72LSg+QsISpUgRuR8
X-Gm-Gg: ASbGncs8WhDh5cUoVqCtv9Bsfcg5UoEMOmI/QzwWNSI5JQOsybRqGOEVdHSU3vDw6ms
	2z7Rc+585MBqqsXyIdkcsW8O8+/kphGGMBlx2I/qu8O6MA3/m/LBdCDnb2FlW7XD0r3xAa37RmD
	vXpOeaiYM9E+e5e1Svefn2yVBjwihn/J2z231A1nbO2YP1iLw+gc3OIYFJL6zNa1gRKMVZWXHRd
	Dvh0NCKB3DK+VInox4ZFik+n7t3Us71rqp52THnnfklPa3+4gXlq7JujPiEnZHkFoO8bd36fCfG
	whbcYBuwhfoVp05IEqI8enVYGo6iRWRMsfUuFC8whFtl0uaND8N8ItIQXWrOKAySqzb+Lv1gzaZ
	lOPcakNHkNX5kuWrKxuBJjmYq8tDO1ZT04z6Dfk81B0eIh7sForSgNX2xVvh7ETDJll9SGb9DH2
	Sfa+u4ACtfAjapPg==
X-Google-Smtp-Source: AGHT+IFWiFaPK/3SzCCDMU0eaVs82NQJjjs4OJMxCNhx+PRy+qfGvhLoB3urjp1BVbB0eezwx8zy/w==
X-Received: by 2002:a05:600c:8b33:b0:456:302:6dc3 with SMTP id 5b1f17b1804b1-45b877be066mr95265895e9.26.1756827997621;
        Tue, 02 Sep 2025 08:46:37 -0700 (PDT)
Received: from localhost (p200300e41f1c4d00f22f74fffe1f3a53.dip0.t-ipconnect.de. [2003:e4:1f1c:4d00:f22f:74ff:fe1f:3a53])
        by smtp.gmail.com with UTF8SMTPSA id ffacd0b85a97d-3cf33fb9d37sm20384921f8f.49.2025.09.02.08.46.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Sep 2025 08:46:34 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Sumit Semwal <sumit.semwal@linaro.org>
Date: Tue,  2 Sep 2025 17:46:20 +0200
Message-ID: <20250902154630.4032984-1-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.50.0
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: EE07044668
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,ffwll.ch,linaro.org];
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
Message-ID-Hash: RSRRHTORYJFHUNDYTCVC6AH6KIOXHKWY
X-Message-ID-Hash: RSRRHTORYJFHUNDYTCVC6AH6KIOXHKWY
X-MailFrom: thierry.reding@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>, Andrew Morton <akpm@linux-foundation.org>, David Hildenbrand <david@redhat.com>, Mike Rapoport <rppt@kernel.org>, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-tegra@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-mm@kvack.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 0/9] dma-buf: heaps: Add Tegra VPR support
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/RSRRHTORYJFHUNDYTCVC6AH6KIOXHKWY/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

From: Thierry Reding <treding@nvidia.com>

Hi,

This series adds support for the video protection region (VPR) used on
Tegra SoC devices. It's a special region of memory that is protected
from accesses by the CPU and used to store DRM protected content (both
decrypted stream data as well as decoded video frames).

Patches 1 and 2 add DT binding documentation for the VPR and add the VPR
to the list of memory-region items for display and host1x.

Patch 3 introduces new APIs needed by the Tegra VPR implementation that
allow CMA areas to be dynamically created at runtime rather than using
the fixed, system-wide list. This is used in this driver specifically
because it can use an arbitrary number of these areas (though they are
currently limited to 4).

Patch 4 adds some infrastructure for DMA heap implementations to provide
information through debugfs.

The Tegra VPR implementation is added in patch 5. See its commit message
for more details about the specifics of this implementation.

Finally, patches 6-9 add the VPR placeholder node on Tegra234 and hook
it up to the host1x and GPU nodes so that they can make use of this
region.

Thierry

Thierry Reding (9):
  dt-bindings: reserved-memory: Document Tegra VPR
  dt-bindings: display: tegra: Document memory regions
  mm/cma: Allow dynamically creating CMA areas
  dma-buf: heaps: Add debugfs support
  dma-buf: heaps: Add support for Tegra VPR
  arm64: tegra: Add VPR placeholder node on Tegra234
  arm64: tegra: Add GPU node on Tegra234
  arm64: tegra: Hook up VPR to host1x
  arm64: tegra: Hook up VPR to the GPU

 .../display/tegra/nvidia,tegra186-dc.yaml     |  10 +
 .../display/tegra/nvidia,tegra20-dc.yaml      |  10 +-
 .../display/tegra/nvidia,tegra20-host1x.yaml  |   7 +
 .../nvidia,tegra-video-protection-region.yaml |  55 ++
 arch/arm64/boot/dts/nvidia/tegra234.dtsi      |  57 ++
 drivers/dma-buf/dma-heap.c                    |  56 ++
 drivers/dma-buf/heaps/Kconfig                 |   7 +
 drivers/dma-buf/heaps/Makefile                |   1 +
 drivers/dma-buf/heaps/tegra-vpr.c             | 831 ++++++++++++++++++
 include/linux/cma.h                           |  16 +
 include/linux/dma-heap.h                      |   2 +
 include/trace/events/tegra_vpr.h              |  57 ++
 mm/cma.c                                      |  89 +-
 13 files changed, 1175 insertions(+), 23 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/reserved-memory/nvidia,tegra-video-protection-region.yaml
 create mode 100644 drivers/dma-buf/heaps/tegra-vpr.c
 create mode 100644 include/trace/events/tegra_vpr.h

-- 
2.50.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
