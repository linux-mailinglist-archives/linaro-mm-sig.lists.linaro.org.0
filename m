Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 102A1AC4F0E
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 27 May 2025 14:59:58 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2A187443DF
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 27 May 2025 12:59:57 +0000 (UTC)
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
	by lists.linaro.org (Postfix) with ESMTPS id 4A6F4443DF
	for <linaro-mm-sig@lists.linaro.org>; Tue, 27 May 2025 12:59:45 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=nGEVK+5W;
	spf=pass (lists.linaro.org: domain of mripard@kernel.org designates 172.105.4.254 as permitted sender) smtp.mailfrom=mripard@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id A73EF61137;
	Tue, 27 May 2025 12:59:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0AD79C4CEEB;
	Tue, 27 May 2025 12:59:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748350784;
	bh=G/1KIyH80nzu3tilmQtmDuLXk1YCEor3aOc7I81yUtE=;
	h=Date:From:To:Subject:In-Reply-To:References:Cc:From;
	b=nGEVK+5WcSP6gw5lYN53GnJvNCl0wmH7+luQtkCuTFmxUvzkU0JApCpHcBw2H+e8X
	 J1kwhMPO0k4acu7J4zg0VLh044d4MlqsVlhW7yGUg2xy9rqxW+TMYTtQXkM8Y93EI4
	 BfaivoB49rOs179bGLe6/uLn+ZpSpttyp37YG5Ckfl37R5Hwin6/jLsav0TmUwW3pB
	 dzAnn2QoYtWZ6cW78sIs43M4goOHHck/RYjxXTpfTbcVo/Q+IBw1+gbSfn1+ibCr+3
	 LFTQg6aGc1RlMl0Ru3f9p8sbtXTNg6+sq4zdFZ/T+aqkBwXfZFXG+MbRGs0MNjDKmT
	 DjhcRnqywdabQ==
Message-ID: <b1b422178ef37cf1629dc18cbe5344c6@kernel.org>
Date: Tue, 27 May 2025 12:59:41 +0000
From: "Maxime Ripard" <mripard@kernel.org>
To: "Jared Kangas" <jkangas@redhat.com>
In-Reply-To: <20250522191418.442390-2-jkangas@redhat.com>
References: <20250522191418.442390-2-jkangas@redhat.com>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Spamd-Result: default: False [-0.94 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	BAYES_HAM(-1.94)[94.69%];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.4.254];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	MISSING_XM_UA(0.00)[];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.0.0/19, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Queue-Id: 4A6F4443DF
X-Spamd-Bar: /
Message-ID-Hash: VVDOJBMIHYGZEA5E6EFZIN6IA77T2FFO
X-Message-ID-Hash: VVDOJBMIHYGZEA5E6EFZIN6IA77T2FFO
X-MailFrom: mripard@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Brian.Starkey@arm.com, benjamin.gaignard@collabora.com, christian.koenig@amd.com, dri-devel@lists.freedesktop.org, jstultz@google.com, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, Maxime Ripard <mripard@kernel.org>, sumit.semwal@linaro.org, tjmercier@google.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 1/3] Documentation: dma-buf: heaps: Fix code markup
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/VVDOJBMIHYGZEA5E6EFZIN6IA77T2FFO/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Thu, 22 May 2025 12:14:16 -0700, Jared Kangas wrote:
> Code snippets should be wrapped in double backticks to follow
> reStructuredText semantics; the use of single backticks uses the
> :title-reference: role by default, which isn't quite what we want.
> Add double backticks to code snippets to fix this.
> 
> 
> [ ... ]

Reviewed-by: Maxime Ripard <mripard@kernel.org>

Thanks!
Maxime
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
