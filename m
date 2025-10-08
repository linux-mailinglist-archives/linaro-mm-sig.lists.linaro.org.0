Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EF60BC3731
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 08 Oct 2025 08:16:14 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D7F0745D12
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  8 Oct 2025 06:16:12 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	by lists.linaro.org (Postfix) with ESMTPS id D5E0644982
	for <linaro-mm-sig@lists.linaro.org>; Wed,  8 Oct 2025 06:16:08 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=infradead.org header.s=bombadil.20210309 header.b=2ALShkSr;
	dmarc=none;
	spf=none (lists.linaro.org: domain of BATV+fec44d0e9bb002d05706+8081+infradead.org+hch@bombadil.srs.infradead.org has no SPF policy when checking 198.137.202.133) smtp.mailfrom=BATV+fec44d0e9bb002d05706+8081+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
	:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=5ztySVtL1SeMnFuhjjl/l126E9UfzfV0YUw4emGbgII=; b=2ALShkSrweFZY74Wi1L7w95/xq
	dbK+2jXblgpsXP2BcaVNz9PfOyeaiTKmI6u4IGW7uk/4CM27Ol0Op5ee7UwPqHFs7xN7rlCKaHPwM
	cRZ8ctVekRBHYZUY+99s2my4fW7WcsDnzHJJHJ+LnZLg6SzPYVvZoYSGwcTb2uHt7u7lYQvI4Eznr
	S2+FYneDqhZzlTgb+WJgqaFby6TW1jINkjl4QBYWuBbvV1tQZiAgrPuTdW5NU7KIeXzuEd//hbCYc
	7HpfnS1F9/C/InYtCEZbFRyTsL4o77nRRQJ1AfDMplsjWz/3r7jH1cYnS/Kkrr8QKC2wmt0oRdxD4
	bIVXGOgw==;
Received: from hch by bombadil.infradead.org with local (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v6NT3-00000003Gzl-3ZEM;
	Wed, 08 Oct 2025 06:16:05 +0000
Date: Tue, 7 Oct 2025 23:16:05 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Kees Cook <kees@kernel.org>
Message-ID: <aOYBpY7jPx622xcz@infradead.org>
References: <20251008061027.work.515-kees@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251008061027.work.515-kees@kernel.org>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Rspamd-Queue-Id: D5E0644982
X-Spamd-Bar: -
X-Spamd-Result: default: False [-1.30 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	FORGED_SENDER(0.30)[hch@infradead.org,BATV@bombadil.srs.infradead.org];
	ONCE_RECEIVED(0.20)[];
	R_DKIM_ALLOW(-0.20)[infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	R_SPF_NA(0.00)[no SPF record];
	ASN(0.00)[asn:7247, ipnet:198.137.202.0/24, country:US];
	RCVD_COUNT_ONE(0.00)[1];
	ARC_NA(0.00)[];
	TAGGED_RCPT(0.00)[a9391462075ffb9f77c6];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DMARC_NA(0.00)[infradead.org];
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[hch@infradead.org,BATV@bombadil.srs.infradead.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	TAGGED_FROM(0.00)[fec44d0e9bb002d05706,8081,infradead.org,hch];
	DNSWL_BLOCKED(0.00)[198.137.202.133:from];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-0.996];
	DKIM_TRACE(0.00)[infradead.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: RDSTUBTCH35KFPY7D57CFI72ZNFKG7AL
X-Message-ID-Hash: RDSTUBTCH35KFPY7D57CFI72ZNFKG7AL
X-MailFrom: BATV+fec44d0e9bb002d05706+8081+infradead.org+hch@bombadil.srs.infradead.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Christian Brauner <brauner@kernel.org>, syzbot+a9391462075ffb9f77c6@syzkaller.appspotmail.com, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, linux-hardening@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: use SB_I_NOEXEC and SB_I_NODEV
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/RDSTUBTCH35KFPY7D57CFI72ZNFKG7AL/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Tue, Oct 07, 2025 at 11:10:32PM -0700, Kees Cook wrote:
> The dma-buf pseudo-filesystem should never have executable mappings nor
> device nodes. Set SB_I_NOEXEC and SB_I_NODEV on the superblock to enforce
> this at the filesystem level, similar to secretmem, commit 98f99394a104
> ("secretmem: use SB_I_NOEXEC").
> 
> Fix the syzbot-reported warning from the exec code to enforce this
> requirement:

Can you please just enforce this in init_pseudo?  If a file system
really wants to support devices or executable it can clear them,
but a quick grep suggests that none of them should.

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
