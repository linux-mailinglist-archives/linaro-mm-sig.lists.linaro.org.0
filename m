Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FF55BE584F
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Oct 2025 23:10:14 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C7C46456FF
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Oct 2025 21:10:12 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id 1A0014554D
	for <linaro-mm-sig@lists.linaro.org>; Thu, 16 Oct 2025 21:10:10 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=GLE4WBke;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (lists.linaro.org: domain of robh@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=robh@kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 5DE47455F3;
	Thu, 16 Oct 2025 21:10:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EC8A7C4CEF1;
	Thu, 16 Oct 2025 21:10:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760649009;
	bh=dIiHINW5Bj1JFH3BL4BlKw1HSHlW2rw7nfPJWBosgAQ=;
	h=From:Subject:Date:To:Cc:From;
	b=GLE4WBkewy5OvAs6L3yyOlgcdFL5cxVgDJlMZ9ApUWis+p6D5BeDj1psH4zQEZCFR
	 CRtjnN5ScBO2agtN5sOzFwdIT2BFFIvlI7go+I70fHZFWXzxcGTqBfxSI3rDYW9b7S
	 h2YQFuq4+9krqJu8c1H9zfROzafxhic3YeaMobTtdcsuKdqLkeAVpCb+J65PyegfnQ
	 kKEPGY6m+7bqGbVm/y0FEqKr6Z96qUULLbqeNEap9K6/HlD+cahy+cMlpuj7JZeD7h
	 EPUrtLYBeXqQKwtI0cnluxhItb0/paUbr6HuVkkiZACT8Js1au5J3NEOiR5jvQXaIF
	 xwhLRDoN/TrSg==
From: "Rob Herring (Arm)" <robh@kernel.org>
Date: Thu, 16 Oct 2025 16:06:03 -0500
Message-Id: <20251016-ethos-v5-0-ba0aece0a006@kernel.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIADte8WgC/2XPywrCMBCF4VeRrI1kJk01rnwPcZHLxAallUSCU
 vrupuIFcXmGfD9kZJlSpMy2i5ElKjHHoa9DLRfMdaY/Eo++boYClViD4nTthsxl8F5qCm0Azer
 bS6IQb8/O/lB3F/N1SPdntsB8fRUQX4UCXHDnwCkjnLXB7k6UejqvhnRkc6Lgl20A3gwrMwg6O
 IVGq38mv0xj+2aystZ6bORaUhPUH2s+DMTnm6WpbAP1aKR3NsgfNk3TAzZ9i45AAQAA
X-Change-ID: 20250715-ethos-3fdd39ef6f19
To: Tomeu Vizoso <tomeu@tomeuvizoso.net>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Oded Gabbay <ogabbay@kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Robin Murphy <robin.murphy@arm.com>, Steven Price <steven.price@arm.com>,
 Daniel Stone <daniel@fooishbar.org>, Frank Li <Frank.li@nxp.com>,
 Sui Jingfeng <sui.jingfeng@linux.dev>
X-Mailer: b4 0.15-dev
X-Rspamd-Queue-Id: 1A0014554D
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.252.31];
	MIME_GOOD(-0.10)[text/plain];
	RCPT_COUNT_TWELVE(0.00)[23];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[dt];
	ARC_NA(0.00)[];
	FREEMAIL_TO(0.00)[tomeuvizoso.net,kernel.org,linux.intel.com,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com,arm.com,fooishbar.org,nxp.com,linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	MIME_TRACE(0.00)[0:+];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DNSWL_BLOCKED(0.00)[100.75.92.58:received];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: G7LWN5KNLZSZBERTT7W56B2GTV2PG3BH
X-Message-ID-Hash: G7LWN5KNLZSZBERTT7W56B2GTV2PG3BH
X-MailFrom: robh@kernel.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Frank Li <Frank.Li@nxp.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v5 0/2] accel: Add Arm Ethos-U NPU
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/G7LWN5KNLZSZBERTT7W56B2GTV2PG3BH/>
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

The driver works with Mesa Teflon. The Ethos support was merged on 
10/15. The UAPI should also be compatible with the downstream (open 
source) driver stack[2] and Vela compiler though that has not been 
implemented.

Testing so far has been on i.MX93 boards with Ethos-U65 and a FVP model 
with Ethos-U85. More work is needed in mesa for handling U85 command 
stream differences, but that doesn't affect the UAPI.

A git tree is here[3].

Rob

[0] https://www.arm.com/products/silicon-ip-cpu?families=ethos%20npus
[2] https://gitlab.arm.com/artificial-intelligence/ethos-u/
[3] git://git.kernel.org/pub/scm/linux/kernel/git/robh/linux.git ethos-v5

Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
---
Changes in v5:
- Rework Runtime PM init in probe
- Use __free() cleanups where possible
- Use devm_mutex_init()
- Handle U85 NPU_SET_WEIGHT2_BASE and NPU_SET_WEIGHT2_LENGTH
- Link to v4: https://lore.kernel.org/r/20251015-ethos-v4-0-81025a3dcbf3@kernel.org

Changes in v4:
- Use bulk clk API
- Various whitespace fixes mostly due to ethos->ethosu rename
- Drop error check on dma_set_mask_and_coherent()
- Drop unnecessary pm_runtime_mark_last_busy() call
- Move variable declarations out of switch (a riscv/clang build failure)
- Use lowercase hex in all defines
- Drop unused ethosu_device.coherent member
- Add comments on all locks
- Link to v3: https://lore.kernel.org/r/20250926-ethos-v3-0-6bd24373e4f5@kernel.org

Changes in v3:
- Rework and improve job submit validation                                                            
- Rename ethos to ethosu. There was an Ethos-Nxx that's unrelated.
- Add missing init for sched_lock mutex
- Drop some prints to debug level          
- Fix i.MX93 SRAM accesses (AXI config)
- Add U85 AXI configuration and test on FVP with U85
- Print the current cmd value on timeout                                                              
- Link to v2: https://lore.kernel.org/r/20250811-ethos-v2-0-a219fc52a95b@kernel.org

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
 drivers/accel/ethosu/Kconfig                       |  10 +
 drivers/accel/ethosu/Makefile                      |   4 +
 drivers/accel/ethosu/ethosu_device.h               | 195 ++++++
 drivers/accel/ethosu/ethosu_drv.c                  | 403 ++++++++++++
 drivers/accel/ethosu/ethosu_drv.h                  |  15 +
 drivers/accel/ethosu/ethosu_gem.c                  | 704 +++++++++++++++++++++
 drivers/accel/ethosu/ethosu_gem.h                  |  46 ++
 drivers/accel/ethosu/ethosu_job.c                  | 540 ++++++++++++++++
 drivers/accel/ethosu/ethosu_job.h                  |  41 ++
 include/uapi/drm/ethosu_accel.h                    | 261 ++++++++
 14 files changed, 2309 insertions(+)
---
base-commit: 3a8660878839faadb4f1a6dd72c3179c1df56787
change-id: 20250715-ethos-3fdd39ef6f19

Best regards,
--  
Rob Herring (Arm) <robh@kernel.org>

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
