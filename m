Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 56910CA3443
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 04 Dec 2025 11:44:00 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7ED943F83F
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  4 Dec 2025 10:43:59 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	by lists.linaro.org (Postfix) with ESMTPS id 154C23F690
	for <linaro-mm-sig@lists.linaro.org>; Thu,  4 Dec 2025 10:43:44 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=infradead.org header.s=bombadil.20210309 header.b=K2BRFBOF;
	spf=none (lists.linaro.org: domain of BATV+f6f5b2169625426b73eb+8138+infradead.org+hch@bombadil.srs.infradead.org has no SPF policy when checking 198.137.202.133) smtp.mailfrom=BATV+f6f5b2169625426b73eb+8138+infradead.org+hch@bombadil.srs.infradead.org;
	dmarc=pass (policy=none) header.from=infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
	:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=idCFnFrcUwTtb74aqgqX3OChCwMLLJI8Rgwiu4DAog0=; b=K2BRFBOF4STdM5n71oCxHURkyJ
	KtQjMWn/9TxNZyOFUCMJBMwk3YmSdz8sGr+lYeSmkGXR0go6CosvKBKWBtrFF+y7PywB4wFtfw9gI
	8t3liVGA3mJSStBbxB1LQFnNmbO8rgpnNH2w8AGTzful7ozAXRhheILgv/kvDdhPnz0XRpoVnumit
	OHmSdfbx5Ym5V/8zbG+f/LYgLM7L/8IIWHjmzSmj1DUXkbnespHZPfRkczHxO8Suz4zOnPwGeAdrR
	md7tOKdS+pWrdfhmvvfRKaPQjEVTnsEkYl3LMhkWU+q72FuaE96F3N6SVnZfr6TiYrfLssncAkq0y
	Gsip+55A==;
Received: from hch by bombadil.infradead.org with local (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vR6oF-00000007rBA-2kX4;
	Thu, 04 Dec 2025 10:43:39 +0000
Date: Thu, 4 Dec 2025 02:43:39 -0800
From: Christoph Hellwig <hch@infradead.org>
To: Pavel Begunkov <asml.silence@gmail.com>
Message-ID: <aTFl290ou0_RIT6-@infradead.org>
References: <cover.1763725387.git.asml.silence@gmail.com>
 <6cb3193d3249ab5ca54e8aecbfc24086db09b753.1763725387.git.asml.silence@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6cb3193d3249ab5ca54e8aecbfc24086db09b753.1763725387.git.asml.silence@gmail.com>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.29 / 15.00];
	BAYES_HAM(-2.99)[99.96%];
	DMARC_POLICY_ALLOW(-0.50)[infradead.org,none];
	FORGED_SENDER(0.30)[hch@infradead.org,BATV+f6f5b2169625426b73eb+8138+infradead.org+hch@bombadil.srs.infradead.org];
	R_DKIM_ALLOW(-0.20)[infradead.org:s=bombadil.20210309];
	ONCE_RECEIVED(0.20)[];
	MIME_GOOD(-0.10)[text/plain];
	R_SPF_NA(0.00)[no SPF record];
	ASN(0.00)[asn:7247, ipnet:198.137.202.0/24, country:US];
	RCVD_COUNT_ONE(0.00)[1];
	MIME_TRACE(0.00)[0:+];
	BLOCKLISTDE_FAIL(0.00)[198.137.202.133:server fail];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	FREEMAIL_TO(0.00)[gmail.com];
	NEURAL_HAM(-0.00)[-1.000];
	MISSING_XM_UA(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[hch@infradead.org,BATV+f6f5b2169625426b73eb+8138+infradead.org+hch@bombadil.srs.infradead.org];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	URIBL_BLOCKED(0.00)[bombadil.infradead.org:rdns,bombadil.infradead.org:helo,infradead.org:dkim,infradead.org:mid,infradead.org:from_mime,lst.de:email];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[infradead.org:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 154C23F690
X-Spamd-Bar: ---
Message-ID-Hash: EQFZFPGK5UCC27D5M4DPCSZ6463Q5AF3
X-Message-ID-Hash: EQFZFPGK5UCC27D5M4DPCSZ6463Q5AF3
X-MailFrom: BATV+f6f5b2169625426b73eb+8138+infradead.org+hch@bombadil.srs.infradead.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: linux-block@vger.kernel.org, io-uring@vger.kernel.org, Vishal Verma <vishal1.verma@intel.com>, tushar.gohad@intel.com, Keith Busch <kbusch@kernel.org>, Jens Axboe <axboe@kernel.dk>, Christoph Hellwig <hch@lst.de>, Sagi Grimberg <sagi@grimberg.me>, Alexander Viro <viro@zeniv.linux.org.uk>, Christian Brauner <brauner@kernel.org>, Andrew Morton <akpm@linux-foundation.org>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org, linux-fsdevel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC v2 03/11] block: move around bio flagging helpers
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/EQFZFPGK5UCC27D5M4DPCSZ6463Q5AF3/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Sun, Nov 23, 2025 at 10:51:23PM +0000, Pavel Begunkov wrote:
> We'll need bio_flagged() earlier in bio.h in the next patch, move it
> together with all related helpers, and mark the bio_flagged()'s bio
> argument as const.
> 
> Signed-off-by: Pavel Begunkov <asml.silence@gmail.com>

Looks good:

Reviewed-by: Christoph Hellwig <hch@lst.de>

Maybe ask Jens to queue it up ASAP to get it out of the way?

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
