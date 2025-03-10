Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id D9E20A5A56E
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 10 Mar 2025 22:01:21 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0012044553
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 10 Mar 2025 21:01:20 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id 0C00644542
	for <linaro-mm-sig@lists.linaro.org>; Mon, 10 Mar 2025 21:01:04 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=XELG8I6W;
	spf=pass (lists.linaro.org: domain of vkoul@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=vkoul@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id B8CE95C5D11;
	Mon, 10 Mar 2025 20:58:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4CE6AC4CEE5;
	Mon, 10 Mar 2025 21:01:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741640463;
	bh=aYyGi+0GlhtZZOl3eElkEgro/Og6UgEBW7ME0Eh2cEM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=XELG8I6WYICbM6YDswWTIzR5vBY0ZCdCcGJ/XwRd+rPF8jWKv8h3HR7gxrqFV55Yk
	 YC03rspukIbY7kdASAul32qn3tTTF0Mjsk4YyEhIb3u5/Qj1XV8c+Zcm0FFT2h6v/m
	 F+zkgxIJhbNnd1atUL3+ZMTBsK1wGd1gj7eVnMIfItWqcZQxPHdLUiPB76A4Z3cCow
	 IF6tot8i/DiR7HlFaN9aZMA18vcatU2dTOp5YxckUak3MYgFIzXJtGfVYF6T2k2P02
	 /qA3Twqr+moDiV/Zm01s5J3HOrF4lAXYPAyy3NYPcJQWX3oaLIFX74c7Yw+/KrdG1v
	 Dwfdi1Ujv4h8A==
Date: Tue, 11 Mar 2025 02:30:59 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Jyothi Kumar Seerapu <quic_jseerapu@quicinc.com>
Message-ID: <Z89TC7fKzmmeu6tW@vaman>
References: <20250212120536.28879-1-quic_jseerapu@quicinc.com>
 <20250212120536.28879-2-quic_jseerapu@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250212120536.28879-2-quic_jseerapu@quicinc.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 0C00644542
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.76 / 15.00];
	BAYES_HAM(-2.76)[98.96%];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	RCVD_IN_DNSWL_HI(-0.50)[139.178.84.217:from];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:139.178.84.217];
	MIME_GOOD(-0.10)[text/plain];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:54825, ipnet:139.178.80.0/21, country:US];
	MISSING_XM_UA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	ARC_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	DWL_DNSWL_BLOCKED(0.00)[kernel.org:dkim];
	RCVD_COUNT_TWO(0.00)[2];
	DNSWL_BLOCKED(0.00)[100.75.92.58:received];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
Message-ID-Hash: 7CIUXKXFBDUJPQ5HDNYVVRRSIWC2VSQ7
X-Message-ID-Hash: 7CIUXKXFBDUJPQ5HDNYVVRRSIWC2VSQ7
X-MailFrom: vkoul@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Andi Shyti <andi.shyti@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, linux-arm-msm@vger.kernel.org, dmaengine@vger.kernel.org, linux-kernel@vger.kernel.org, linux-i2c@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, quic_msavaliy@quicinc.com, quic_vtanuku@quicinc.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5 RESEND 1/2] dmaengine: qcom: gpi: Add GPI Block event interrupt support
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/7CIUXKXFBDUJPQ5HDNYVVRRSIWC2VSQ7/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On 12-02-25, 17:35, Jyothi Kumar Seerapu wrote:
> GSI hardware generates an interrupt for each transfer completion.
> For multiple messages within a single transfer, this results in
> N interrupts for N messages, leading to significant software
> interrupt latency.
> 
> To mitigate this latency, utilize Block Event Interrupt (BEI) mechanism.
> Enabling BEI instructs the GSI hardware to prevent interrupt generation
> and BEI is disabled when an interrupt is necessary.
> 
> When using BEI, consider splitting a single multi-message transfer into
> chunks of 8 messages internally and so interrupts are not expected for
> the first 7 message completions, only the last message triggers
> an interrupt, indicating the completion of 8 messages.
> 
> This BEI mechanism enhances overall transfer efficiency.

That sounds good but I dont like the idea that we add a custom interface
for this. Please use DMA_PREP_INTERRUPT instead. Adding this flag should
trigger N interrupts, absence of this should lead to Block events only

-- 
~Vinod
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
