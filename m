Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 09C83AC4F13
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 27 May 2025 15:00:31 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1F078443E3
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 27 May 2025 13:00:30 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id 8FE89443E0
	for <linaro-mm-sig@lists.linaro.org>; Tue, 27 May 2025 13:00:18 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b="vKdAm5e/";
	spf=pass (lists.linaro.org: domain of mripard@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=mripard@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id E32E64A93C;
	Tue, 27 May 2025 13:00:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 60B66C4CEE9;
	Tue, 27 May 2025 13:00:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748350817;
	bh=ByY3v2Z6BPxv2P0JXnk/fpP5Gnu/Ld1qKUcEghmsQ/c=;
	h=Date:From:To:Subject:In-Reply-To:References:Cc:From;
	b=vKdAm5e/51iiN/W8WOdsfc91Jw+oMMaRIECe9P1oymn4oUYRcAclX0NDlrIau0AOJ
	 Bqes1x9wHn9KDjJuOs6Z8XDznbs222PHmjiD+0j9GvIXN+HVvTbiNVBK7KVRPvDYxj
	 jmuq23Q4I64jPT/n8ZeacK/7C+xwNIXZAiki+hMm6QNPLPoI7XBC8BaclisBZ2Fi0m
	 NPKnVKHjJs6ThT/T1igeKE6QSVkBZ8WPJm0FAiu3f5u7g7a7QkW2rIV5ocXnPU3JnE
	 /sJHvV8/t2h0RzIJYsnqyyh+nUC6fRqCjalh8u7hmDnavVzitv5/zLF7Bsj9ZcX8R5
	 AY7Xde8EUjkcg==
Message-ID: <9470f08c3fcc49fcbbe890a5d66588a5@kernel.org>
Date: Tue, 27 May 2025 13:00:14 +0000
From: "Maxime Ripard" <mripard@kernel.org>
To: "Jared Kangas" <jkangas@redhat.com>
In-Reply-To: <20250522191418.442390-3-jkangas@redhat.com>
References: <20250522191418.442390-3-jkangas@redhat.com>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Spamd-Result: default: False [-0.01 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	BAYES_HAM(-1.01)[87.27%];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.252.31:c];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	MISSING_XM_UA(0.00)[];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:20940, ipnet:172.232.0.0/13, country:NL];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Queue-Id: 8FE89443E0
X-Spamd-Bar: /
Message-ID-Hash: SA3S3OD7A2QSIV7PMMAF36TC5J6AQSLB
X-Message-ID-Hash: SA3S3OD7A2QSIV7PMMAF36TC5J6AQSLB
X-MailFrom: mripard@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Brian.Starkey@arm.com, benjamin.gaignard@collabora.com, christian.koenig@amd.com, dri-devel@lists.freedesktop.org, jstultz@google.com, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, Maxime Ripard <mripard@kernel.org>, sumit.semwal@linaro.org, tjmercier@google.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 2/3] dma-buf: heaps: Parameterize heap name in __add_cma_heap()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/SA3S3OD7A2QSIV7PMMAF36TC5J6AQSLB/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Thu, 22 May 2025 12:14:17 -0700, Jared Kangas wrote:
> Prepare for the introduction of a fixed-name CMA heap by replacing the
> unused void pointer parameter in __add_cma_heap() with the heap name.
> 
> Signed-off-by: Jared Kangas <jkangas@redhat.com>

Reviewed-by: Maxime Ripard <mripard@kernel.org>

Thanks!
Maxime
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
