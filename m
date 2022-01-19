Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 303834B642E
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 15 Feb 2022 08:20:16 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6223E3EEC6
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 15 Feb 2022 07:20:15 +0000 (UTC)
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	by lists.linaro.org (Postfix) with ESMTPS id D43273ED41
	for <linaro-mm-sig@lists.linaro.org>; Wed, 19 Jan 2022 15:54:04 +0000 (UTC)
Received: by mail-wm1-f45.google.com with SMTP id n8so5878540wmk.3
        for <linaro-mm-sig@lists.linaro.org>; Wed, 19 Jan 2022 07:54:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=date:from:to:cc:subject:message-id:mail-followup-to:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=0wqlG/hTKmwc1qlTFRNgFAeCCLQtJYdgJJ7JVZ30KiM=;
        b=e3Pr/dvFruT2iN6cAa0XHKtiGXwO9ueK+tpw6WUP4dtdEWHBBmgavmSQF8CU9J+UcN
         Hz8qBhrHQ1Vt/k5htfjwnT1NUI2SOss2Xgrkvlggt0Lb//TD0mBdhSnopsXNee83qc/w
         W1zJllJJxCEqEHZ8Wdd6DgeaZC8r9Yvd0MdkE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to;
        bh=0wqlG/hTKmwc1qlTFRNgFAeCCLQtJYdgJJ7JVZ30KiM=;
        b=nqJdsavm5i39sQwEZAZvlXJyfyerIublyDdzXCoDIpNTXvNKylPChDqboJfdcW734r
         oUk6uVj9edZN/q4SZ0PqopE4zZ0trGRh4Ndkdyw2EY5djvf4xch00mpdp57qFqr5IWaB
         Rmk6JrjTzmJm3B1iEcAB/SyyD80RdtzJU7LjSaAc+S9L/iM1pZx7KFaOGj73HFwwDUtZ
         VkDwXv22hLxHhSE8GOVo+YgmNA9hYkIN/QYRLiNp/E+dGph54VKKQQBzS26ZJbBLaoky
         95LMmItG0Yb9x/35fewmKgi3nGvEBhwCTpm7JPqV3GOIsLNdahhMyusJ2CZgbRh/tadK
         kJkw==
X-Gm-Message-State: AOAM533xRUsBiHV+La0P1ahpJ8hbXUEfhwCvYVlJGqsux8GjsT061kLD
	g0iIUi1FhUoJH/wwQ9PmUi1XRA==
X-Google-Smtp-Source: ABdhPJwYR2kHuXIdMjbo//urPLyFiKmcuB+F1hAH4j6/NzToi8Ft7emFD9AOoL2abPOHJyc76IPrBA==
X-Received: by 2002:a05:6000:381:: with SMTP id u1mr18768876wrf.431.1642607643845;
        Wed, 19 Jan 2022 07:54:03 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
        by smtp.gmail.com with ESMTPSA id w9sm6382224wmc.36.2022.01.19.07.54.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Jan 2022 07:54:02 -0800 (PST)
Date: Wed, 19 Jan 2022 16:54:00 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Hridya Valsaraju <hridya@google.com>
Message-ID: <Yeg0GGi0tdnnCLHg@phenom.ffwll.local>
Mail-Followup-To: Hridya Valsaraju <hridya@google.com>,
	Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@linux.ie>, Jonathan Corbet <corbet@lwn.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Arve =?iso-8859-1?B?SGr4bm5lduVn?= <arve@android.com>,
	Todd Kjos <tkjos@android.com>, Martijn Coenen <maco@android.com>,
	Joel Fernandes <joel@joelfernandes.org>,
	Christian Brauner <christian@brauner.io>,
	Suren Baghdasaryan <surenb@google.com>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	Benjamin Gaignard <benjamin.gaignard@linaro.org>,
	Liam Mark <lmark@codeaurora.org>, Laura Abbott <labbott@redhat.com>,
	Brian Starkey <Brian.Starkey@arm.com>,
	John Stultz <john.stultz@linaro.org>, Tejun Heo <tj@kernel.org>,
	Zefan Li <lizefan.x@bytedance.com>,
	Johannes Weiner <hannes@cmpxchg.org>,
	Dave Airlie <airlied@redhat.com>,
	Jason Ekstrand <jason@jlekstrand.net>,
	Matthew Auld <matthew.auld@intel.com>,
	Matthew Brost <matthew.brost@intel.com>, Li Li <dualli@google.com>,
	Marco Ballesio <balejs@google.com>, Miguel Ojeda <ojeda@kernel.org>,
	Hang Lu <hangl@codeaurora.org>,
	Wedson Almeida Filho <wedsonaf@google.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Kees Cook <keescook@chromium.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Chris Down <chris@chrisdown.name>,
	Vipin Sharma <vipinsh@google.com>,
	Daniel Borkmann <daniel@iogearbox.net>,
	Vlastimil Babka <vbabka@suse.cz>, Arnd Bergmann <arnd@arndb.de>,
	dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
	linaro-mm-sig@lists.linaro.org, cgroups@vger.kernel.org,
	Kenny.Ho@amd.com, daniels@collabora.com, kaleshsingh@google.com,
	tjmercier@google.com
References: <20220115010622.3185921-1-hridya@google.com>
 <20220115010622.3185921-5-hridya@google.com>
 <f8c8b196-7d12-6242-97ac-38149f3a3ba3@amd.com>
 <CA+wgaPMjCfjQS4LA8hmVwAaGfXZhoJvvTUnOGt3duOhFb3orTw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CA+wgaPMjCfjQS4LA8hmVwAaGfXZhoJvvTUnOGt3duOhFb3orTw@mail.gmail.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
X-MailFrom: daniel@ffwll.ch
X-Mailman-Rule-Hits: max-recipients
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-size; news-moderation; no-subject; digests; suspicious-header
Message-ID-Hash: QUTGSYL4ZOUGHB7VQCONNZYDC224CVAE
X-Message-ID-Hash: QUTGSYL4ZOUGHB7VQCONNZYDC224CVAE
X-Mailman-Approved-At: Tue, 15 Feb 2022 07:20:06 +0000
CC: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, Jonathan Corbet <corbet@lwn.net>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Arve =?iso-8859-1?B?SGr4bm5lduVn?= <arve@android.com>, Todd Kjos <tkjos@android.com>, Martijn Coenen <maco@android.com>, Joel Fernandes <joel@joelfernandes.org>, Christian Brauner <christian@brauner.io>, Suren Baghdasaryan <surenb@google.com>, Benjamin Gaignard <benjamin.gaignard@linaro.org>, Liam Mark <lmark@codeaurora.org>, Laura Abbott <labbott@redhat.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <john.stultz@linaro.org>, Tejun Heo <tj@kernel.org>, Zefan Li <lizefan.x@bytedance.com>, Johannes Weiner <hannes@cmpxchg.org>, Dave Airlie <airlied@redhat.com>, Jason Ekstrand <jason@jlekstrand.net>, Matthew Auld <matthew.auld@intel.com
 >, Matthew Brost <matthew.brost@intel.com>, Li Li <dualli@google.com>, Marco Ballesio <balejs@google.com>, Miguel Ojeda <ojeda@kernel.org>, Hang Lu <hangl@codeaurora.org>, Wedson Almeida Filho <wedsonaf@google.com>, Masahiro Yamada <masahiroy@kernel.org>, Andrew Morton <akpm@linux-foundation.org>, Nathan Chancellor <nathan@kernel.org>, Kees Cook <keescook@chromium.org>, Nick Desaulniers <ndesaulniers@google.com>, Chris Down <chris@chrisdown.name>, Vipin Sharma <vipinsh@google.com>, Daniel Borkmann <daniel@iogearbox.net>, Vlastimil Babka <vbabka@suse.cz>, Arnd Bergmann <arnd@arndb.de>, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, cgroups@vger.kernel.org, Kenny.Ho@amd.com, daniels@collabora.com, kaleshsingh@google.com, tjmercier@google.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC 4/6] dma-buf: Add DMA-BUF exporter op to charge a DMA-BUF to a cgroup.
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/QUTGSYL4ZOUGHB7VQCONNZYDC224CVAE/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

On Tue, Jan 18, 2022 at 10:54:16AM -0800, Hridya Valsaraju wrote:
> On Sun, Jan 16, 2022 at 11:46 PM Christian K=F6nig
> <christian.koenig@amd.com> wrote:
> >
> > Am 15.01.22 um 02:06 schrieb Hridya Valsaraju:
> > > The optional exporter op provides a way for processes to transfer
> > > charge of a buffer to a different process. This is essential for the
> > > cases where a central allocator process does allocations for various
> > > subsystems, hands over the fd to the client who
> > > requested the memory and drops all references to the allocated memory.
> > >
> > > Signed-off-by: Hridya Valsaraju <hridya@google.com>
> > > ---
> > >   include/linux/dma-buf.h | 18 ++++++++++++++++++
> > >   1 file changed, 18 insertions(+)
> > >
> > > diff --git a/include/linux/dma-buf.h b/include/linux/dma-buf.h
> > > index 7ab50076e7a6..d5e52f81cc6f 100644
> > > --- a/include/linux/dma-buf.h
> > > +++ b/include/linux/dma-buf.h
> > > @@ -13,6 +13,7 @@
> > >   #ifndef __DMA_BUF_H__
> > >   #define __DMA_BUF_H__
> > >
> > > +#include <linux/cgroup_gpu.h>
> > >   #include <linux/dma-buf-map.h>
> > >   #include <linux/file.h>
> > >   #include <linux/err.h>
> > > @@ -285,6 +286,23 @@ struct dma_buf_ops {
> > >
> > >       int (*vmap)(struct dma_buf *dmabuf, struct dma_buf_map *map);
> > >       void (*vunmap)(struct dma_buf *dmabuf, struct dma_buf_map *map);
> > > +
> > > +     /**
> > > +      * @charge_to_cgroup:
> > > +      *
> > > +      * This is called by an exporter to charge a buffer to the spec=
ified
> > > +      * cgroup.
> >
> > Well that sentence makes absolutely no sense at all.
> >
> > The dma_buf_ops are supposed to be called by the DMA-buf subsystem on
> > behalves of the importer and never by the exporter itself.
> >
> > I hope that this is just a documentation mixup.
>=20
> Thank you for taking a look Christian!
>=20
> Yes, that was poor wording, sorry about that. It should instead say
> that the op would be called by the process the buffer is currently
> charged to in order to transfer the buffer's charge to a different
> cgroup. This is helpful in the case where a process acts as an
> allocator for multiple client processes and we would like the
> allocated buffers to be charged to the clients who requested their
> allocation(instead of the allocating process as is the default
> behavior). In Android, the graphics allocator HAL process[1] does
> most of the graphics allocations on behalf of various clients. After
> allocation, the HAL process passes the fd to the client over binder
> IPC and the binder driver invokes the charge_to_cgroup() DMA-BUF op to
> uncharge the buffer from the HAL process and charge it to the client
> process instead.
>=20
> [1]: https://source.android.com/devices/graphics/arch-bq-gralloc

For that use-case, do we really need to have the vfunc abstraction and
force all exporters to do something reasonable with it?

I think just storing the cgrpus gpu memory bucket this is charged against
and doing this in a generic way would be a lot better.

That way we can also easily add other neat features in the future, like
e.g. ttm could take care of charge-assignement automatically maybe, or we
could print the current cgroups charge relationship in the sysfs info
file. Or anything else really.

I do feel that in general for gpu memory cgroups to be useful, we should
really have memory pools as a fairly strong concept. Otherwise every
driver/allocator/thing is going to come up with their own, and very likely
incompatible interpretation. And we end up with a supposed generic cgroups
interface which cannot actually be used in a driver/vendor agnostic way at
all.
-Daniel

>=20
> Regards,
> Hridya
>=20
>=20
> >
> > Regards,
> > Christian.
> >
> > >   The caller must hold a reference to @gpucg obtained via
> > > +      * gpucg_get(). The DMA-BUF will be uncharged from the cgroup i=
t is
> > > +      * currently charged to before being charged to @gpucg. The cal=
ler must
> > > +      * belong to the cgroup the buffer is currently charged to.
> > > +      *
> > > +      * This callback is optional.
> > > +      *
> > > +      * Returns:
> > > +      *
> > > +      * 0 on success or negative error code on failure.
> > > +      */
> > > +     int (*charge_to_cgroup)(struct dma_buf *dmabuf, struct gpucg *g=
pucg);
> > >   };
> > >
> > >   /**
> >

--=20
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
