Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 8441E84BFFD
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  6 Feb 2024 23:26:03 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4CC3E400DD
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  6 Feb 2024 22:26:02 +0000 (UTC)
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
	by lists.linaro.org (Postfix) with ESMTPS id 0202C3EFE8
	for <linaro-mm-sig@lists.linaro.org>; Tue,  6 Feb 2024 22:25:55 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linux-foundation.org header.s=korg header.b=d4DsACTS;
	dmarc=none;
	spf=pass (lists.linaro.org: domain of akpm@linux-foundation.org designates 145.40.73.55 as permitted sender) smtp.mailfrom=akpm@linux-foundation.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 42333CE1742;
	Tue,  6 Feb 2024 22:25:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4CA06C433C7;
	Tue,  6 Feb 2024 22:25:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux-foundation.org;
	s=korg; t=1707258351;
	bh=WU3x0zIeoP6xyUMyTVcnpXfLJrwhP5APoHffIvSjMFQ=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=d4DsACTSy8TyyqJS3vN1FDuQFelfApE/DdBxnrCS9iPQH/Zy2u6zE1d/W0TvEFZgi
	 hoUTECZ7LJ2xfiTR0yzszUXCmhASl9nJ4P93wMC8/fqYcIpm5LEckg8nQ6/LDkUM+m
	 00qmGUqbRWbeJh/vyhvDo7YkU+xeniPBDG52Rxi4=
Date: Tue, 6 Feb 2024 14:25:50 -0800
From: Andrew Morton <akpm@linux-foundation.org>
To: Anshuman Khandual <anshuman.khandual@arm.com>
Message-Id: <20240206142550.62bed7715692ddc0071da7d0@linux-foundation.org>
In-Reply-To: <20240206041518.438801-1-anshuman.khandual@arm.com>
References: <20240206041518.438801-1-anshuman.khandual@arm.com>
X-Mailer: Sylpheed 3.8.0beta1 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
Mime-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 0202C3EFE8
X-Spamd-Bar: --
X-Spamd-Result: default: False [-3.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	MV_CASE(0.50)[];
	R_DKIM_ALLOW(-0.20)[linux-foundation.org:s=korg];
	R_SPF_ALLOW(-0.20)[+ip4:145.40.73.55];
	MIME_GOOD(-0.10)[text/plain];
	FROM_HAS_DN(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:54825, ipnet:145.40.73.0/24, country:US];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROM(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	DWL_DNSWL_BLOCKED(0.00)[linux-foundation.org:dkim];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DNSWL_BLOCKED(0.00)[100.75.92.58:received,145.40.73.55:from];
	DMARC_NA(0.00)[linux-foundation.org];
	DKIM_TRACE(0.00)[linux-foundation.org:+]
Message-ID-Hash: ZGCPMUQRTKKQE336M7RURVHMAWOJQVYY
X-Message-ID-Hash: ZGCPMUQRTKKQE336M7RURVHMAWOJQVYY
X-MailFrom: akpm@linux-foundation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: linux-mm@kvack.org, Sumit Semwal <sumit.semwal@linaro.org>, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] mm/cma: Drop cma_get_name()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ZGCPMUQRTKKQE336M7RURVHMAWOJQVYY/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Tue,  6 Feb 2024 09:45:18 +0530 Anshuman Khandual <anshuman.khandual@arm.com> wrote:

> cma_get_name() just returns cma->name without any additional transformation
> unlike other helpers such as cma_get_base() and cma_get_size(). This helper
> is not worth the additional indirection, and can be dropped after replacing
> directly with cma->name in the sole caller __add_cma_heap().

drivers/dma-buf/heaps/cma_heap.c: In function '__add_cma_heap':
drivers/dma-buf/heaps/cma_heap.c:379:28: error: invalid use of undefined type 'struct cma'
  379 |         exp_info.name = cma->name;
      |                            ^~

Fixing this would require moving the `struct cma' definition into
cma.h.  I don't think that's worthwhile.

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
