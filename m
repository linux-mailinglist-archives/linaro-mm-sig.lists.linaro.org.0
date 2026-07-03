Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Ys3RDL+nR2oydAAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 03 Jul 2026 14:14:55 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id A5041702430
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 03 Jul 2026 14:14:54 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=kernel.org header.s=k20260515 header.b=d6VbRKa+;
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=kernel.org (policy=quarantine);
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org"
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AC9C340E18
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  3 Jul 2026 12:14:53 +0000 (UTC)
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
	by lists.linaro.org (Postfix) with ESMTPS id D107D3F900
	for <linaro-mm-sig@lists.linaro.org>; Fri,  3 Jul 2026 12:14:42 +0000 (UTC)
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id EFD26600E1;
	Fri,  3 Jul 2026 12:14:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 126D41F000E9;
	Fri,  3 Jul 2026 12:14:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783080881;
	bh=wCSekJzceclmv2Xdvl4vn/0F9vF6oLcNXpc7pUyDj0k=;
	h=Date:From:To:Subject:In-Reply-To:References:Cc;
	b=d6VbRKa+He2/cAFmwYnkVZjxIlsRAYd3koyUzl174SlRWigVinPrxLNyW1D1D0xO6
	 vkKKNIjrywD5F/UoMCDkjtUhMxTDLSU421VLUP3NnsA6Yq0l9c8CZZMUbV11zQMLVm
	 xMzeOzkKcw/86tXQdDzbYMe4rYh4Pzb86R5wZxWB+2w+rY6vfS4Tp4BiDgmMxVtryf
	 iBGvffCRTHwx+6nF4Codf8+X4UD6mDt+kizURmVt9H/JKijTnykALPxPBgCZUpmupk
	 VMwlDGrjS5G8BUxlsvjQZ0J03g4d96qrPiIHOY/A1nSnH6jTvs4ieLW2YML2tmOltj
	 ytQtBS/G8QFIA==
Message-ID: <e6cccc28049a6231d50842254447c909@kernel.org>
Date: Fri, 03 Jul 2026 12:14:39 +0000
From: "Maxime Ripard" <mripard@kernel.org>
To: "Thierry Reding" <thierry.reding@kernel.org>
In-Reply-To: <20260701-tegra-vpr-v3-7-d80f7b871bb4@nvidia.com>
References: <20260701-tegra-vpr-v3-7-d80f7b871bb4@nvidia.com>
X-Spamd-Bar: ----
Message-ID-Hash: AOZ7K7W2N3MPQBFY3JPJ5KTVAHTAOKRQ
X-Message-ID-Hash: AOZ7K7W2N3MPQBFY3JPJ5KTVAHTAOKRQ
X-MailFrom: mripard@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, iommu@lists.linux.dev, linaro-mm-sig@lists.linaro.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linux-mm@kvack.org, linux-s390@vger.kernel.org, linux-tegra@vger.kernel.org, linux-trace-kernel@vger.kernel.org, Alexander Gordeev <agordeev@linux.ibm.com>, Andrew Morton <akpm@linux-foundation.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, Catalin Marinas <catalin.marinas@arm.com>, Christian Borntraeger <borntraeger@linux.ibm.com>, =?utf-8?b?Q2hyaXN0aWFuIEvDtm5pZw==?= <christian.koenig@amd.com>, Conor Dooley <conor+dt@kernel.org>, David Airlie <airlied@gmail.com>, David Hildenbrand <david@kernel.org>, Gerald Schaefer <gerald.schaefer@linux.ibm.com>, Heiko Carstens <hca@linux.ibm.com>, John Stultz <jstultz@google.com>, Jonathan Hunter <jonathanh@nvidia.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, "Liam R. Howlett" <li
 am@infradead.org>, Lorenzo Stoakes <ljs@kernel.org>, Luca Ceresoli <luca.ceresoli@bootlin.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Masami Hiramatsu <mhiramat@kernel.org>, Mathieu Desnoyers <mathieu.desnoyers@efficios.com>, Maxime Ripard <mripard@kernel.org>, Michal Hocko <mhocko@suse.com>, Mike Rapoport <rppt@kernel.org>, Mikko Perttunen <mperttunen@nvidia.com>, Rasmus Villemoes <linux@rasmusvillemoes.dk>, Rob Herring <robh@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Russell King <linux@armlinux.org.uk>, Simona Vetter <simona@ffwll.ch>, Sowjanya Komatineni <skomatineni@nvidia.com>, Steven Rostedt <rostedt@goodmis.org>, Sumit Semwal <sumit.semwal@linaro.org>, Suren Baghdasaryan <surenb@google.com>, Sven Schnelle <svens@linux.ibm.com>, "T.J. Mercier" <tjmercier@google.com>, Thierry Reding <thierry.reding@gmail.com>, Thierry Reding <treding@nvidia.com>, Thomas Zimmermann <tzimmermann@suse.de>, Vasily Gorbik <gor@linux.ibm.com>, Vlastimil Babka <vbabka@kernel.o
 rg>, Will Deacon <will@kernel.org>, Yury Norov <yury.norov@gmail.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 07/11] dma-buf: heaps: Add debugfs support
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/AOZ7K7W2N3MPQBFY3JPJ5KTVAHTAOKRQ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [3.49 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[mripard@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.freedesktop.org,lists.linux.dev,lists.linaro.org,lists.infradead.org,kvack.org,linux.ibm.com,linux-foundation.org,collabora.com,arm.com,amd.com,kernel.org,gmail.com,google.com,nvidia.com,infradead.org,bootlin.com,linux.intel.com,efficios.com,suse.com,rasmusvillemoes.dk,armlinux.org.uk,ffwll.ch,goodmis.org,linaro.org,suse.de,kernel.o rg];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:thierry.reding@kernel.org,m:devicetree@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:iommu@lists.linux.dev,m:linaro-mm-sig@lists.linaro.org,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:linux-media@vger.kernel.org,m:linux-mm@kvack.org,m:linux-s390@vger.kernel.org,m:linux-tegra@vger.kernel.org,m:linux-trace-kernel@vger.kernel.org,m:agordeev@linux.ibm.com,m:akpm@linux-foundation.org,m:benjamin.gaignard@collabora.com,m:Brian.Starkey@arm.com,m:catalin.marinas@arm.com,m:borntraeger@linux.ibm.com,m:christian.koenig@amd.com,m:conor+dt@kernel.org,m:airlied@gmail.com,m:david@kernel.org,m:gerald.schaefer@linux.ibm.com,m:hca@linux.ibm.com,m:jstultz@google.com,m:jonathanh@nvidia.com,m:krzk+dt@kernel.org,m:li am@infradead.org,m:ljs@kernel.org,m:luca.ceresoli@bootlin.com,m:maarten.lankhorst@linux.intel.com,m:mhiramat@kernel.org,m:mathieu.desnoyers@efficios.com,m:mripard@kernel.org,m:mhocko@suse.com,m:rppt@kernel.org,m:mperttunen@nvidia.com
 ,m:linux@rasmusvillemoes.dk,m:robh@kernel.org,m:robin.murphy@arm.com,m:linux@armlinux.org.uk,m:simona@ffwll.ch,m:skomatineni@nvidia.com,m:rostedt@goodmis.org,m:sumit.semwal@linaro.org,m:surenb@google.com,m:svens@linux.ibm.com,m:tjmercier@google.com,m:thierry.reding@gmail.com,m:treding@nvidia.com,m:tzimmermann@suse.de,m:gor@linux.ibm.com,m:vbabka@kernel.o rg,m:will@kernel.org,m:yury.norov@gmail.com,m:conor@kernel.org,m:krzk@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	DKIM_TRACE(0.00)[kernel.org:-];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_GT_50(0.00)[55];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mripard@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig,dt];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nvidia.com:email,lists.linaro.org:from_smtp,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A5041702430

On Wed, 1 Jul 2026 18:08:18 +0200, Thierry Reding wrote:
> From: Thierry Reding <treding@nvidia.com>
> 
> Add a callback to struct dma_heap_ops that heap providers can implement
> to show information about the state of the heap in debugfs. A top-level
> directory named "dma_heap" is created in debugfs and individual files
> 
> [ ... ]

Reviewed-by: Maxime Ripard <mripard@kernel.org>

Thanks!
Maxime
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
