Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id EB2C04B87F1
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 16 Feb 2022 13:43:58 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2DBA2401BD
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 16 Feb 2022 12:43:58 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id DBB593ECF6
	for <linaro-mm-sig@lists.linaro.org>; Tue, 15 Feb 2022 07:30:47 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 7D6BC615BD;
	Tue, 15 Feb 2022 07:30:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5F634C340EC;
	Tue, 15 Feb 2022 07:30:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1644910246;
	bh=d7O0LjAMCqSVPzrmAjEUAUrhTljBtokM4lMRkzTZRn4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=nI9BT8e7bH53D6xl7GN7ShLijc1GUvEbq4aQlISk6014ej3GYNqf5qP80x8gmm/C9
	 0guWhIB8CG6B5zuHuf00vQIZDZHrwIIKCzcTJ9SwAxgKSiayqHfUjljXOt3LauL8UI
	 VXdXc4rXKsY/KwXxCm704rsBDZEywjRr3as+lK1g=
Date: Tue, 15 Feb 2022 08:30:43 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Suren Baghdasaryan <surenb@google.com>
Message-ID: <YgtWo+6UeAU4/CvT@kroah.com>
References: <20220211161831.3493782-1-tjmercier@google.com>
 <20220211161831.3493782-7-tjmercier@google.com>
 <Ygdfe3XSvN8iFuUc@kroah.com>
 <CABdmKX1eKZZ9809uxnzT_Bm+mdNuK2AObLRxyBpdDF3yE76Hrg@mail.gmail.com>
 <YgtPzXUmSOVyplnm@kroah.com>
 <CAJuCfpG0V2qZVVUPRmw3fZP-bQmp+w36nOUe9iHtgmuHb7PemQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJuCfpG0V2qZVVUPRmw3fZP-bQmp+w36nOUe9iHtgmuHb7PemQ@mail.gmail.com>
X-MailFrom: gregkh@linuxfoundation.org
X-Mailman-Rule-Hits: max-recipients
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-size; news-moderation; no-subject; digests; suspicious-header
Message-ID-Hash: ZJMPLVR2ZE64MAIPW4W64QZFVLMNTRWH
X-Message-ID-Hash: ZJMPLVR2ZE64MAIPW4W64QZFVLMNTRWH
X-Mailman-Approved-At: Wed, 16 Feb 2022 12:42:55 +0000
CC: "T.J. Mercier" <tjmercier@google.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, Jonathan Corbet <corbet@lwn.net>, Arve =?iso-8859-1?B?SGr4bm5lduVn?= <arve@android.com>, Todd Kjos <tkjos@android.com>, Martijn Coenen <maco@android.com>, Joel Fernandes <joel@joelfernandes.org>, Christian Brauner <brauner@kernel.org>, Hridya Valsaraju <hridya@google.com>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Benjamin Gaignard <benjamin.gaignard@linaro.org>, Liam Mark <lmark@codeaurora.org>, Laura Abbott <labbott@redhat.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <john.stultz@linaro.org>, Tejun Heo <tj@kernel.org>, Zefan Li <lizefan.x@bytedance.com>, Johannes Weiner <hannes@cmpxchg.org>, Kalesh Singh <kaleshsingh@google.com>, Kenny.Ho@amd.com, DRI mailing list <dri-devel@lists.freedesktop.org>, "open list:DOC
 UMENTATION" <linux-doc@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, linux-media <linux-media@vger.kernel.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>, cgroups mailinglist <cgroups@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC v2 6/6] android: binder: Add a buffer flag to relinquish ownership of fds
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ZJMPLVR2ZE64MAIPW4W64QZFVLMNTRWH/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Mon, Feb 14, 2022 at 11:19:35PM -0800, Suren Baghdasaryan wrote:
> On Mon, Feb 14, 2022 at 11:01 PM Greg Kroah-Hartman
> <gregkh@linuxfoundation.org> wrote:
> >
> > On Mon, Feb 14, 2022 at 02:25:47PM -0800, T.J. Mercier wrote:
> > > On Fri, Feb 11, 2022 at 11:19 PM Greg Kroah-Hartman
> > > > > --- a/include/uapi/linux/android/binder.h
> > > > > +++ b/include/uapi/linux/android/binder.h
> > > > > @@ -137,6 +137,7 @@ struct binder_buffer_object {
> > > > >
> > > > >  enum {
> > > > >       BINDER_BUFFER_FLAG_HAS_PARENT = 0x01,
> > > > > +     BINDER_BUFFER_FLAG_SENDER_NO_NEED = 0x02,
> > > > >  };
> > > > >
> > > > >  /* struct binder_fd_array_object - object describing an array of fds in a buffer
> > > > > --
> > > > > 2.35.1.265.g69c8d7142f-goog
> > > > >
> > > >
> > > > How does userspace know that binder supports this new flag?
> > >
> > > Sorry, I don't completely follow even after Todd's comment. Doesn't
> > > the presence of BINDER_BUFFER_FLAG_SENDER_NO_NEED in the header do
> > > this?
> >
> > There is no "header" when running a new kernel on an old userspace,
> > right?  How about the other way around, old kernel, new userspace?
> 
> 1. new kernel + old userspace = kernel supports the feature but
> userspace does not use it. The old userspace won't even mount the new
> cgroup controller, accounting is not performed, charge is not
> transferred.
> 2. old kernel + new userspace = the new cgroup controller is not
> supported by the kernel, accounting is not performed, charge is not
> transferred.
> 3. old kernel + old userspace = same as #2
> 4. new kernel + new userspace = cgroup is mounted, feature is
> supported and used.
> Does that work or do we need a separate indication of whether binder
> driver supports the charge transfer feature?

Ok, if that's all working, this is fine, it just seemed odd to add a new
type like this.  Perhaps this can go into the changelog text...

thanks,

greg k-h
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
