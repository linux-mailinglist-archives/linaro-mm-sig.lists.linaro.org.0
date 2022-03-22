Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 80D554EBEFB
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 30 Mar 2022 12:40:04 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B15F33EC46
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 30 Mar 2022 10:40:03 +0000 (UTC)
Received: from smtp-out1.suse.de (smtp-out1.suse.de [195.135.220.28])
	by lists.linaro.org (Postfix) with ESMTPS id 812873EA1A
	for <linaro-mm-sig@lists.linaro.org>; Tue, 22 Mar 2022 09:52:28 +0000 (UTC)
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
	(No client certificate requested)
	by smtp-out1.suse.de (Postfix) with ESMTPS id 3CCAB210E4;
	Tue, 22 Mar 2022 09:52:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.com; s=susede1;
	t=1647942747; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=rjxz6Fi2dZC6nTVXM4+OUBhBa/HkZPtrCHPDKh15Ckg=;
	b=RliCtDZGILuQGBiSZ9HJY8BwnJ3EETCFCcEARcrCjl7iZROeBNxTLHk867NKmWk66mkgqt
	NNK5bhjtwFFJq4Gvh2BgHtaSjhzPfUUCqSaM8rgj2+kdoDR48n+IzL2Tu0MTn0BhDNspeE
	kIpVFhNFS35vl5JXRocWI/Whp9KFu0s=
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
	(No client certificate requested)
	by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id 37D2E12FC5;
	Tue, 22 Mar 2022 09:52:26 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
	by imap2.suse-dmz.suse.de with ESMTPSA
	id Z+9HDFqcOWIuGAAAMHmgww
	(envelope-from <mkoutny@suse.com>); Tue, 22 Mar 2022 09:52:26 +0000
Date: Tue, 22 Mar 2022 10:52:24 +0100
From: Michal =?iso-8859-1?Q?Koutn=FD?= <mkoutny@suse.com>
To: "T.J. Mercier" <tjmercier@google.com>
Message-ID: <20220322095223.GG8477@blackbody.suse.cz>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-MailFrom: mkoutny@suse.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 35WGKYSOXTQVD4LHHDCSYT6HWKAMSGOE
X-Message-ID-Hash: 35WGKYSOXTQVD4LHHDCSYT6HWKAMSGOE
X-Mailman-Approved-At: Wed, 30 Mar 2022 10:39:50 +0000
CC: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
	Jonathan Corbet <corbet@lwn.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Arve =?iso-8859-1?B?SGr4bm5lduVn?= <arve@android.com>,
	Todd Kjos <tkjos@android.com>, Martijn Coenen <maco@android.com>,
	Joel Fernandes <joel@joelfernandes.org>,
	Christian Brauner <brauner@kernel.org>,
	Hridya Valsaraju <hridya@google.com>,
	Suren Baghdasaryan <surenb@google.com>,
	Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
	Benjamin Gaignard <benjamin.gaignard@linaro.org>,
	Liam Mark <lmark@codeaurora.org>, Laura Abbott <labbott@redhat.com>,
	Brian Starkey <Brian.Starkey@arm.com>,
	John Stultz <john.stultz@linaro.org>, Tejun Heo <tj@kernel.org>,
	Zefan Li <lizefan.x@bytedance.com>,
	Johannes Weiner <hannes@cmpxchg.org>, Shuah Khan <shuah@kernel.org>,
	Kalesh Singh <kaleshsingh@google.com>, Kenny.Ho@amd.com,
	dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
	linaro-mm-sig@lists.linaro.org, cgroups@vger.kernel.org,
	linux-kselftest@vger.kernel.orgbcc, RFC@lists.linaro.org,
	CABdmKX3+mTjxWzgrv44SKWT7mdGnQKMrv6c26d=iWdNPG7f1VQ@mail.gmail.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC v3 5/8] dmabuf: Add gpu cgroup charge transfer function
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/35WGKYSOXTQVD4LHHDCSYT6HWKAMSGOE/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Mon, Mar 21, 2022 at 04:54:26PM -0700, "T.J. Mercier"
<tjmercier@google.com> wrote:
> Since the charge is duplicated in two cgroups for a short period
> before it is uncharged from the source cgroup I guess the situation
> you're thinking about is a global (or common ancestor) limit?

The common ancestor was on my mind (after the self-shortcut).

> I can see how that would be a problem for transfers done this way and
> an alternative would be to swap the order of the charge operations:
> first uncharge, then try_charge. To be certain the uncharge is
> reversible if the try_charge fails, I think I'd need either a mutex
> used at all gpucg_*charge call sites or access to the gpucg_mutex,

Yes, that'd provide safe conditions for such operations, although I'm
not sure these special types of memory can afford global lock on their
fast paths.

> which implies adding transfer support to gpu.c as part of the gpucg_*
> API itself and calling it here. Am I following correctly here?

My idea was to provide a special API (apart from
gpucp_{try_charge,uncharge}) to facilitate transfers...

> This series doesn't actually add limit support just accounting, but
> I'd like to get it right here.

...which could be implemented (or changed) depending on how the charging
is realized internally.


Michal
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
