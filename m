Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C8917C05FD1
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Oct 2025 13:34:45 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 42F123F7D2
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Oct 2025 11:34:43 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id 585CD3F7A7
	for <linaro-mm-sig@lists.linaro.org>; Fri, 24 Oct 2025 11:34:30 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=hds0sijd;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (lists.linaro.org: domain of mripard@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=mripard@kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id CC103450AF;
	Fri, 24 Oct 2025 11:34:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5A9BEC4CEF1;
	Fri, 24 Oct 2025 11:34:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761305669;
	bh=C2071/4y7/j52Jeu+ERq03SVVMZ5dIN9u1f1mb/b9vQ=;
	h=Date:From:To:Subject:In-Reply-To:References:Cc:From;
	b=hds0sijd3DpmsMZEdqENMgI9IkUzM1SysXUOE7+1iSLj3LZQowSCdwya7THigUfFN
	 jCj6J3zgN7FDNy2936BUyuVb2acinCRajGsjPfkEnBVpmggk5F3AGlBPHyV1tZMKMS
	 +a8P8ozie7oz7NLosPF2bPbIV//61MVzzMkVsN1RfBiaH8u9/ZRc7sDHc/NxpxLYTL
	 VrJZBPR3347TWkt1m4xXZXabk+7cOQrYi6HSv8XuqkNJuEkH6f7O218k+iBn92f+0I
	 tGi2Dw1pMnR/SacbDyl+BatQJMM6+pHyvtq5VapgyZn7Bhwkr+EZremykwk8sE7Xf6
	 oqJk4HDV9OvCQ==
Message-ID: <51b0a361379b26ff14dd2f5b0aa4d6df@kernel.org>
Date: Fri, 24 Oct 2025 11:34:26 +0000
From: "Maxime Ripard" <mripard@kernel.org>
To: "Barry Song" <21cnbao@gmail.com>
In-Reply-To: <20251021042022.47919-1-21cnbao@gmail.com>
References: <20251021042022.47919-1-21cnbao@gmail.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 585CD3F7A7
X-Spamd-Bar: -
X-Spamd-Result: default: False [-1.99 / 15.00];
	BAYES_HAM(-2.99)[99.97%];
	MISSING_MIME_VERSION(2.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.252.31];
	MIME_GOOD(-0.10)[text/plain];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	ARC_NA(0.00)[];
	DWL_DNSWL_BLOCKED(0.00)[kernel.org:dkim];
	MID_RHS_MATCH_FROM(0.00)[];
	DNSWL_BLOCKED(0.00)[172.234.252.31:from,100.75.92.58:received];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,arm.com,collabora.com,amd.com,lists.freedesktop.org,google.com,lists.linaro.org,vger.kernel.org,linaro.org,oppo.com,kernel.org];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
Message-ID-Hash: 2TOBRDFAXC6OCREIVTQOAQB5FD3NYNK7
X-Message-ID-Hash: 2TOBRDFAXC6OCREIVTQOAQB5FD3NYNK7
X-MailFrom: mripard@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: 21cnbao@gmail.com, Brian.Starkey@arm.com, benjamin.gaignard@collabora.com, christian.koenig@amd.com, dri-devel@lists.freedesktop.org, jstultz@google.com, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, sumit.semwal@linaro.org, tjmercier@google.com, v-songbaohua@oppo.com, zhengtangquan@oppo.com, Maxime Ripard <mripard@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2] dma-buf: system_heap: use larger contiguous mappings instead of per-page mmap
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/2TOBRDFAXC6OCREIVTQOAQB5FD3NYNK7/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Tue, 21 Oct 2025 17:20:22 +1300, Barry Song wrote:
> From: Barry Song <v-songbaohua@oppo.com>
> 
> We can allocate high-order pages, but mapping them one by
> one is inefficient. This patch changes the code to map
> as large a chunk as possible. The code looks somewhat
> 
> [ ... ]

Reviewed-by: Maxime Ripard <mripard@kernel.org>

Thanks!
Maxime
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
