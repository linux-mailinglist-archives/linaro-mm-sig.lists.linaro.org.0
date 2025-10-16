Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id DA97ABE4149
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Oct 2025 17:02:28 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CE08E45612
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Oct 2025 15:02:27 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id D6C804550F
	for <linaro-mm-sig@lists.linaro.org>; Thu, 16 Oct 2025 15:02:21 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=ErPrdLI2;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (lists.linaro.org: domain of vkoul@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=vkoul@kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 0532C4365E;
	Thu, 16 Oct 2025 15:02:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 593C5C4CEF1;
	Thu, 16 Oct 2025 15:02:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760626940;
	bh=3MjSfBabHCFIL4MA29+pKYeNe3+EeynLYY5TahB4N/U=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=ErPrdLI2oJ05RaUfi+JG94NUkNTrjhFzYjwB5HNFEIbBnwC8FRmafgMScIUIFZRrj
	 ERdL/p/OQJXkTPOeh6Vanil0/l6H9hUlGYHALYNctGKLPsADsuDB3mu3w2QUgx784w
	 IyutRJ5RBuYu1OeNIIkjLKWK8SOlBTfgbtY0hZFNrQgemUX/vWJPrISGu+oNrY1gls
	 aX6VDDeWW8y4iRQEbzB80phLm5zCqHIjsPBWmNv4+dyxRLmmG0ePsoKyznQ3f9YGGb
	 hHzXfj1UpplcfLOX82o9mqpInT5zorAU2EVzki3L/LqSjgFEjJwrgWpzigeUK1bdkF
	 tC2dFn+7qu8YA==
From: Vinod Koul <vkoul@kernel.org>
To: Mukesh Kumar Savaliya <quic_msavaliy@quicinc.com>,
 Viken Dadhaniya <quic_vdadhani@quicinc.com>,
 Andi Shyti <andi.shyti@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>,
 =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Jyothi Kumar Seerapu <jyothi.seerapu@oss.qualcomm.com>
In-Reply-To: <20250925120035.2844283-1-jyothi.seerapu@oss.qualcomm.com>
References: <20250925120035.2844283-1-jyothi.seerapu@oss.qualcomm.com>
Message-Id: <176062693701.525215.15119814964609949547.b4-ty@kernel.org>
Date: Thu, 16 Oct 2025 20:32:17 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-Rspamd-Queue-Id: D6C804550F
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.252.31];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DNSWL_BLOCKED(0.00)[172.234.252.31:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: XF547BBCNIQBY43VC6DN46Q5AMFI7UWL
X-Message-ID-Hash: XF547BBCNIQBY43VC6DN46Q5AMFI7UWL
X-MailFrom: vkoul@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-arm-msm@vger.kernel.org, dmaengine@vger.kernel.org, linux-kernel@vger.kernel.org, linux-i2c@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, quic_vtanuku@quicinc.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v8 0/2] i2c: i2c-qcom-geni: Add Block event interrupt support
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/XF547BBCNIQBY43VC6DN46Q5AMFI7UWL/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit


On Thu, 25 Sep 2025 17:30:33 +0530, Jyothi Kumar Seerapu wrote:
> The I2C driver gets an interrupt upon transfer completion.
> When handling multiple messages in a single transfer, this
> results in N interrupts for N messages, leading to significant
> software interrupt latency.
> 
> To mitigate this latency, utilize Block Event Interrupt (BEI)
> mechanism. Enabling BEI instructs the hardware to prevent interrupt
> generation and BEI is disabled when an interrupt is necessary.
> 
> [...]

Applied, thanks!

[1/2] dmaengine: qcom: gpi: Add GPI Block event interrupt support
      commit: 4e8331317e73902e8b2663352c8766227e633901
[2/2] i2c: i2c-qcom-geni: Add Block event interrupt support
      commit: 398035178503bf662281bbffb4bebce1460a4bc5

Best regards,
-- 
~Vinod


_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
