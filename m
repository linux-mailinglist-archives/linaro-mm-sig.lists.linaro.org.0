Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 50BAB4EC539
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 30 Mar 2022 15:09:16 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7EA4D3EC4D
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 30 Mar 2022 13:09:15 +0000 (UTC)
Received: from smtp-out2.suse.de (smtp-out2.suse.de [195.135.220.29])
	by lists.linaro.org (Postfix) with ESMTPS id 5B5453EBFA
	for <linaro-mm-sig@lists.linaro.org>; Tue, 29 Mar 2022 15:21:45 +0000 (UTC)
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
	(No client certificate requested)
	by smtp-out2.suse.de (Postfix) with ESMTPS id 4FBEE1FD0A;
	Tue, 29 Mar 2022 15:21:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.com; s=susede1;
	t=1648567304; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=n/czKHIPapnBxpdu79ODwmVGjcsUIWEmGzncRJ5TN4Q=;
	b=lbxalIk0hgBTc9ZrvdtVK14x3u1oqMDVbsoiIWRU/HZAKUtFdn9xuq+x4VdQSqRv2NIzra
	6u7dg24T8Ka4DRgQdxJkMClNHbD8rd8VMmEUcF8AeBfKYtvlHup2tBTYs1n4gYuW4kxpnl
	lnJuwJXKKePEEilmmgnC19er+O83O34=
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
	(No client certificate requested)
	by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id 755B913AB1;
	Tue, 29 Mar 2022 15:21:43 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
	by imap2.suse-dmz.suse.de with ESMTPSA
	id hsZZGwckQ2LkcwAAMHmgww
	(envelope-from <mkoutny@suse.com>); Tue, 29 Mar 2022 15:21:43 +0000
Date: Tue, 29 Mar 2022 17:21:42 +0200
From: Michal =?iso-8859-1?Q?Koutn=FD?= <mkoutny@suse.com>
To: "T.J. Mercier" <tjmercier@google.com>
Message-ID: <20220329152142.GA15794@blackbody.suse.cz>
References: <20220328035951.1817417-1-tjmercier@google.com>
 <20220328035951.1817417-6-tjmercier@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220328035951.1817417-6-tjmercier@google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-MailFrom: mkoutny@suse.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: LYRLYNISJXNIQA3O5NUVA54BLUFRDRFM
X-Message-ID-Hash: LYRLYNISJXNIQA3O5NUVA54BLUFRDRFM
X-Mailman-Approved-At: Wed, 30 Mar 2022 13:09:01 +0000
CC: David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Jonathan Corbet <corbet@lwn.net>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Arve =?iso-8859-1?B?SGr4bm5lduVn?= <arve@android.com>, Todd Kjos <tkjos@android.com>, Martijn Coenen <maco@android.com>, Joel Fernandes <joel@joelfernandes.org>, Christian Brauner <brauner@kernel.org>, Hridya Valsaraju <hridya@google.com>, Suren Baghdasaryan <surenb@google.com>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Benjamin Gaignard <benjamin.gaignard@linaro.org>, Liam Mark <lmark@codeaurora.org>, Laura Abbott <labbott@redhat.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <john.stultz@linaro.org>, Tejun Heo <tj@kernel.org>, Zefan Li <lizefan.x@bytedance.com>, Johannes Weiner <hannes@cmpxchg.org>, Shuah Khan <shuah@kernel.org>, kaleshsingh@google.com, Kenny.Ho@amd.com, 
 skhan@linuxfoundation.org, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, cgroups@vger.kernel.org, linux-kselftest@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC v4 5/8] dmabuf: Add gpu cgroup charge transfer function
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/LYRLYNISJXNIQA3O5NUVA54BLUFRDRFM/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi.

On Mon, Mar 28, 2022 at 03:59:44AM +0000, "T.J. Mercier" <tjmercier@google.com> wrote:
> From: Hridya Valsaraju <hridya@google.com>
> 
> The dma_buf_charge_transfer function provides a way for processes to

(s/dma_bug_charge_transfer/dma_bug_transfer_charge/)

> transfer charge of a buffer to a different process. This is essential
> for the cases where a central allocator process does allocations for
> various subsystems, hands over the fd to the client who requested the
> memory and drops all references to the allocated memory.

I understood from [1] some buffers are backed by regular RAM. How are
these charges going to be transferred (if so)?


Thanks,
Michal

[1]
https://lore.kernel.org/r/CABdmKX2NSAKMC6rReMYfo2SSVNxEXcS466hk3qF6YFt-j-+_NQ@mail.gmail.com
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
