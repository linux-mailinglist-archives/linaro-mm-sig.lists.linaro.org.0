Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 14BBFB216E3
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 11 Aug 2025 23:05:57 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9DA6044441
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 11 Aug 2025 21:05:55 +0000 (UTC)
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
	by lists.linaro.org (Postfix) with ESMTPS id 6435D441DD
	for <linaro-mm-sig@lists.linaro.org>; Mon, 11 Aug 2025 21:05:44 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=Fv165CvC;
	spf=pass (lists.linaro.org: domain of robh@kernel.org designates 172.105.4.254 as permitted sender) smtp.mailfrom=robh@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id C0C4260051;
	Mon, 11 Aug 2025 21:05:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E0CA4C4CEED;
	Mon, 11 Aug 2025 21:05:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754946343;
	bh=rFOh1R9upFEZl0fLBLl4rh7tVbwpqz5lpmvNqlmnwS8=;
	h=From:Subject:Date:To:Cc:From;
	b=Fv165CvCKdjr3fJjNoHj9nKdqX5JUW5DGBa1Lt8HBuAUzHXhgei+9TQjTSmOolZ8Z
	 zEeQVhVwmzd7KgGaF+GGbBOs0Xfr5YVyrwoc3A3TV9mNaYKQFbU6W1FdP6ApBERR5J
	 m6FHJFErKVhXEr4XPEDQEGIqhXCkdjFq4UUBkLt7ILaF11v07YR4Tnm4Hipfd6AwVM
	 N+kmoNGxr2qjKVsHBNlZT0jZ6IAkM47Cre8iCIJUjx8AXYNE0yEc7bc0e25u+08/Lt
	 LdNvN/kbfmJ5AHBK127UlatXRREKhdJ4RgIYVmMdGhM13YePvjHP15VsX7iMvViG8R
	 TX9s5HGT7jecQ==
From: "Rob Herring (Arm)" <robh@kernel.org>
Date: Mon, 11 Aug 2025 16:05:24 -0500
Message-Id: <20250811-ethos-v2-0-a219fc52a95b@kernel.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIABRbmmgC/y3MQQrDIBCF4auEWdeihrSkq96jZBF1jEOLljFIS
 /DutSHL//H4NsjIhBlu3QaMhTKl2EKfOrBhjgsKcq1BSz3IqxoEriFl0Xvn+hH9xasR2vfN6Om
 zO4+pdaC8Jv7ubFH/9RC0PoSihBTWKjvM0hrjzf2JHPF1TrzAVGv9AZwFxDybAAAA
X-Change-ID: 20250715-ethos-3fdd39ef6f19
To: Tomeu Vizoso <tomeu@tomeuvizoso.net>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Oded Gabbay <ogabbay@kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Robin Murphy <robin.murphy@arm.com>, Steven Price <steven.price@arm.com>
X-Mailer: b4 0.15-dev
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.4.254];
	MIME_GOOD(-0.10)[text/plain];
	TAGGED_RCPT(0.00)[dt];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.0.0/19, country:SG];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[tomeuvizoso.net,kernel.org,linux.intel.com,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com,arm.com];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 6435D441DD
X-Spamd-Bar: --
Message-ID-Hash: NU367WZXJSJVIE6JSXQIXDR5WUDLCTVD
X-Message-ID-Hash: NU367WZXJSJVIE6JSXQIXDR5WUDLCTVD
X-MailFrom: robh@kernel.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v2 0/2] accel: Add Arm Ethos-U NPU
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/NU367WZXJSJVIE6JSXQIXDR5WUDLCTVD/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

The Arm Ethos-U65/85 NPUs are designed for edge AI inference 
applications[0].

The driver works with Mesa Teflon. A merge request for Ethos support is 
here[1]. The UAPI should also be compatible with the downstream (open 
source) driver stack[2] and Vela compiler though that has not been 
implemented.

Testing so far has been on i.MX93 boards with Ethos-U65. Support for U85 
is still todo. Only minor changes on driver side will be needed for U85 
support.

A git tree is here[3].

Rob

[0] https://www.arm.com/products/silicon-ip-cpu?families=ethos%20npus
[1] https://gitlab.freedesktop.org/mesa/mesa/-/merge_requests/36699/
[2] https://gitlab.arm.com/artificial-intelligence/ethos-u/
[3] git://git.kernel.org/pub/scm/linux/kernel/git/robh/linux.git ethos-v2

Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
---
Changes in v2:
- Rebase on v6.17-rc1 adapting to scheduler changes
- scheduler: Drop the reset workqueue. According to the scheduler docs,
  we don't need it since we have a single h/w queue.
- scheduler: Rework the timeout handling to continue running if we are
  making progress. Fixes timeouts on larger jobs.
- Reset the NPU on resume so it's in a known state
- Add error handling on clk_get() calls
- Fix drm_mm splat on module unload. We were missing a put on the
  cmdstream BO in the scheduler clean-up.
- Fix 0-day report needing explicit bitfield.h include
- Link to v1: https://lore.kernel.org/r/20250722-ethos-v1-0-cc1c5a0cbbfb@kernel.org

---
Rob Herring (Arm) (2):
      dt-bindings: npu: Add Arm Ethos-U65/U85
      accel: Add Arm Ethos-U NPU driver

 .../devicetree/bindings/npu/arm,ethos.yaml         |  79 +++
 MAINTAINERS                                        |   9 +
 drivers/accel/Kconfig                              |   1 +
 drivers/accel/Makefile                             |   1 +
 drivers/accel/ethos/Kconfig                        |  10 +
 drivers/accel/ethos/Makefile                       |   4 +
 drivers/accel/ethos/ethos_device.h                 | 181 ++++++
 drivers/accel/ethos/ethos_drv.c                    | 418 ++++++++++++
 drivers/accel/ethos/ethos_drv.h                    |  15 +
 drivers/accel/ethos/ethos_gem.c                    | 707 +++++++++++++++++++++
 drivers/accel/ethos/ethos_gem.h                    |  46 ++
 drivers/accel/ethos/ethos_job.c                    | 514 +++++++++++++++
 drivers/accel/ethos/ethos_job.h                    |  41 ++
 include/uapi/drm/ethos_accel.h                     | 262 ++++++++
 14 files changed, 2288 insertions(+)
---
base-commit: 8f5ae30d69d7543eee0d70083daf4de8fe15d585
change-id: 20250715-ethos-3fdd39ef6f19

Best regards,
--  
Rob Herring (Arm) <robh@kernel.org>

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
