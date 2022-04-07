Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id AE6DC4F7B8F
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  7 Apr 2022 11:26:31 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D84703EA4D
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  7 Apr 2022 09:26:30 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	by lists.linaro.org (Postfix) with ESMTPS id 065333EA4D
	for <linaro-mm-sig@lists.linaro.org>; Thu,  7 Apr 2022 09:26:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=7mLWqo55aLIM3ENweBsO1ZtF+sHB9PXi6WrDPhe6EQM=; b=EiDS7Aem9yy9VJQ9e9fyzSDJUH
	VWN4Iw3JnZRPx+65cF9ddkjQWvuLl/ROUJ3jOIKCrqDoCWQGMNfc7xqJJIwxmBtXNkIDxrAfX5cOj
	/s8Dqr6hYphiA+biAzonBOHwiNxVEYw+j3yWTsQxtLVOfnVA6v4/3jhyYfuzYy6GB3lM7uIrutzwq
	MwqAz2fevrfPCI37fjAg27GWrm2WANdkgaEIv8dQ7Q0EYk5K+0wObearqxIvD6KpgG8hMKxzrAIFr
	Nyv8wIsOK8TVmc9glXRgfPROnLK1nxPJSNuCDw+O0fsyzAWd2WQ7FcNEK9/BumXhO/dMFbzg3/ifi
	KvPM0KHg==;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=worktop.programming.kicks-ass.net)
	by desiato.infradead.org with esmtpsa (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ncOP9-002Rm2-QQ; Thu, 07 Apr 2022 09:26:16 +0000
Received: by worktop.programming.kicks-ass.net (Postfix, from userid 1000)
	id 692849862CF; Thu,  7 Apr 2022 11:26:15 +0200 (CEST)
Date: Thu, 7 Apr 2022 11:26:15 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <20220407092615.GJ2731@worktop.programming.kicks-ass.net>
References: <20220407085946.744568-1-christian.koenig@amd.com>
 <20220407085946.744568-16-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220407085946.744568-16-christian.koenig@amd.com>
Message-ID-Hash: AIN3GATMDMWXERHKGRRMTYMSUCC3VOUA
X-Message-ID-Hash: AIN3GATMDMWXERHKGRRMTYMSUCC3VOUA
X-MailFrom: peterz@infradead.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, intel-gfx@lists.freedesktop.org, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Ingo Molnar <mingo@redhat.com>, Will Deacon <will@kernel.org>, Waiman Long <longman@redhat.com>, Boqun Feng <boqun.feng@gmail.com>, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 15/15] seqlock: drop seqcount_ww_mutex_t
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/AIN3GATMDMWXERHKGRRMTYMSUCC3VOUA/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

On Thu, Apr 07, 2022 at 10:59:46AM +0200, Christian K=F6nig wrote:
> Daniel pointed out that this series removes the last user of
> seqcount_ww_mutex_t, so let's drop this.
>=20
> Signed-off-by: Christian K=F6nig <christian.koenig@amd.com>

Acked-by: Peter Zijlstra (Intel) <peterz@infradead.org>
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
