Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id E58868BB470
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  3 May 2024 22:00:06 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C06294484F
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  3 May 2024 20:00:05 +0000 (UTC)
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
	by lists.linaro.org (Postfix) with ESMTPS id DDCFD40C4C
	for <linaro-mm-sig@lists.linaro.org>; Fri,  3 May 2024 19:59:54 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=chromium.org header.s=google header.b=lCwbQIJU;
	spf=pass (lists.linaro.org: domain of keescook@chromium.org designates 209.85.214.171 as permitted sender) smtp.mailfrom=keescook@chromium.org;
	dmarc=pass (policy=none) header.from=chromium.org
Received: by mail-pl1-f171.google.com with SMTP id d9443c01a7336-1e65a1370b7so307415ad.3
        for <linaro-mm-sig@lists.linaro.org>; Fri, 03 May 2024 12:59:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1714766394; x=1715371194; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=kXbuS/Hft89FN1tBWD1yXoLgj43aVjsF859uRSyCcO8=;
        b=lCwbQIJUNk0zN4NkOR0SDQosfuxFOMnM9l60qMOcP70xR+j2YX0ga6/NsvlACrTezG
         JyLdVGztAlSJDvvdOojj2ZAynemiK9yxGrcw8yRgGvy76CaJSBqgAwLTIP1dmmx1HM51
         HLw3LIgi60C1KJ/V+V6jN2DXPzOTqefAhboLc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714766394; x=1715371194;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kXbuS/Hft89FN1tBWD1yXoLgj43aVjsF859uRSyCcO8=;
        b=qLXwY+MIxDgc7dk66a8WRPXEulZex+XuSeg7l9gVZPRz1ojsPR/nK9tN0Murqza1ko
         bdmSrRMaj8csUShKEp7sKnHyRvPfEy8Jcldz9Y1gg71187oXiFeGEKT0VPR7eLFQcUK8
         zNBQpJUZ7xslgi9eM5uXtp5XE4pGXBguJlxZjF5bbtTa8iHmhGh/GhePC2nJ7BoMnKuz
         y8HXwe+aPSPZaBG5RLHsb5TaKrwt746Ju8CkPM9h9dInwvyuwDWRwzP/Il+i/Q2vDk5o
         gQAKfHwxWDltckmjrzU7CRKvOJu8Xpztw+arG568tmQLNuAkFICTM2i4373Y0FEJdx5x
         mjUA==
X-Forwarded-Encrypted: i=1; AJvYcCWVVKNBnx2GuxBgfLUBeWF2HMTI1D+/9x/GFAr2G9MPaxa5JI2O5fC8ffc1zVw4hI4T6UTq0xKuNDmstZebR2K7kAeryL8orS64WqDPJac=
X-Gm-Message-State: AOJu0YziUHTU+b8TFxwb57yomCYVI0iWdwOpJtHmG1JfzBNQhaGRUAHu
	nZINJOpDFoaIYsh1NpWDBewOKuOIB0sWj+DU4DMAhhq2CRrX6Kk2JEFJuNvc/Q==
X-Google-Smtp-Source: AGHT+IF7CJaHehS47rwSXtmiD/0Qq2/Az5cGhZ/XA6S28lF8JjtukRtodBuIYdyT740U/+9Oz5YhZA==
X-Received: by 2002:a17:902:d58d:b0:1eb:d79a:c111 with SMTP id k13-20020a170902d58d00b001ebd79ac111mr5316118plh.4.1714766394020;
        Fri, 03 May 2024 12:59:54 -0700 (PDT)
Received: from www.outflux.net ([198.0.35.241])
        by smtp.gmail.com with ESMTPSA id j12-20020a170903024c00b001eb51a46f5bsm3651440plh.43.2024.05.03.12.59.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 May 2024 12:59:52 -0700 (PDT)
Date: Fri, 3 May 2024 12:59:52 -0700
From: Kees Cook <keescook@chromium.org>
To: Jens Axboe <axboe@kernel.dk>
Message-ID: <202405031237.B6B8379@keescook>
References: <0000000000002d631f0615918f1e@google.com>
 <7c41cf3c-2a71-4dbb-8f34-0337890906fc@gmail.com>
 <202405031110.6F47982593@keescook>
 <64b51cc5-9f5b-4160-83f2-6d62175418a2@kernel.dk>
 <202405031207.9D62DA4973@keescook>
 <d6285f19-01aa-49c8-8fef-4b5842136215@kernel.dk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d6285f19-01aa-49c8-8fef-4b5842136215@kernel.dk>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: DDCFD40C4C
X-Spamd-Bar: ++
X-Spamd-Result: default: False [2.00 / 15.00];
	MID_END_EQ_FROM_USER_PART(4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[chromium.org,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[chromium.org:s=google];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_CC(0.00)[gmail.com,zeniv.linux.org.uk,kernel.org,syzkaller.appspotmail.com,vger.kernel.org,suse.cz,googlegroups.com,linaro.org,amd.com,lists.freedesktop.org,lists.linaro.org,labbott.name];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[chromium.org:+];
	RCPT_COUNT_TWELVE(0.00)[16];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.214.171:from];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	TO_DN_SOME(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	MISSING_XM_UA(0.00)[];
	DNSWL_BLOCKED(0.00)[198.0.35.241:received];
	DWL_DNSWL_BLOCKED(0.00)[chromium.org:dkim];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_IN_DNSWL_FAIL(0.00)[209.85.214.171:server fail];
	TAGGED_RCPT(0.00)[045b454ab35fd82a35fb];
	SUBJECT_HAS_QUESTION(0.00)[]
X-Spam-Level: **
X-Rspamd-Action: no action
Message-ID-Hash: X3VCTDXA7XT634NRDY27TZRJ7JC7CQVI
X-Message-ID-Hash: X3VCTDXA7XT634NRDY27TZRJ7JC7CQVI
X-MailFrom: keescook@chromium.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Bui Quang Minh <minhquangbui99@gmail.com>, Al Viro <viro@zeniv.linux.org.uk>, Christian Brauner <brauner@kernel.org>, syzbot <syzbot+045b454ab35fd82a35fb@syzkaller.appspotmail.com>, io-uring@vger.kernel.org, jack@suse.cz, linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org, syzkaller-bugs@googlegroups.com, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Laura Abbott <laura@labbott.name>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: get_file() unsafe under epoll (was Re: [syzbot] [fs?] [io-uring?] general protection fault in __ep_remove)
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/X3VCTDXA7XT634NRDY27TZRJ7JC7CQVI/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Fri, May 03, 2024 at 01:35:09PM -0600, Jens Axboe wrote:
> On 5/3/24 1:22 PM, Kees Cook wrote:
> > On Fri, May 03, 2024 at 12:49:11PM -0600, Jens Axboe wrote:
> >> On 5/3/24 12:26 PM, Kees Cook wrote:
> >>> Thanks for doing this analysis! I suspect at least a start of a fix
> >>> would be this:
> >>>
> >>> diff --git a/drivers/dma-buf/dma-buf.c b/drivers/dma-buf/dma-buf.c
> >>> index 8fe5aa67b167..15e8f74ee0f2 100644
> >>> --- a/drivers/dma-buf/dma-buf.c
> >>> +++ b/drivers/dma-buf/dma-buf.c
> >>> @@ -267,9 +267,8 @@ static __poll_t dma_buf_poll(struct file *file, poll_table *poll)
> >>>  
> >>>  		if (events & EPOLLOUT) {
> >>>  			/* Paired with fput in dma_buf_poll_cb */
> >>> -			get_file(dmabuf->file);
> >>> -
> >>> -			if (!dma_buf_poll_add_cb(resv, true, dcb))
> >>> +			if (!atomic_long_inc_not_zero(&dmabuf->file) &&
> >>> +			    !dma_buf_poll_add_cb(resv, true, dcb))
> >>>  				/* No callback queued, wake up any other waiters */
> >>
> >> Don't think this is sane at all. I'm assuming you meant:
> >>
> >> 	atomic_long_inc_not_zero(&dmabuf->file->f_count);
> > 
> > Oops, yes, sorry. I was typed from memory instead of copy/paste.
> 
> Figured :-)
> 
> >> but won't fly as you're not under RCU in the first place. And what
> >> protects it from being long gone before you attempt this anyway? This is
> >> sane way to attempt to fix it, it's completely opposite of what sane ref
> >> handling should look like.
> >>
> >> Not sure what the best fix is here, seems like dma-buf should hold an
> >> actual reference to the file upfront rather than just stash a pointer
> >> and then later _hope_ that it can just grab a reference. That seems
> >> pretty horrible, and the real source of the issue.
> > 
> > AFAICT, epoll just doesn't hold any references at all. It depends,
> > I think, on eventpoll_release() (really eventpoll_release_file())
> > synchronizing with epoll_wait() (but I don't see how this happens, and
> > the race seems to be against ep_item_poll() ...?)
> >
> > I'm really confused about how eventpoll manages the lifetime of polled
> > fds.
> 
> epoll doesn't hold any references, and it's got some ugly callback to
> deal with that. It's not ideal, nor pretty, but that's how it currently
> works. See eventpoll_release() and how it's called. This means that
> epoll itself is supposedly safe from the file going away, even though it
> doesn't hold a reference to it.

Right -- what remains unclear to me is how struct file lifetime is
expected to work in the struct file_operations::poll callbacks. Because
using get_file() there looks clearly unsafe...

> Except that in this case, the file is already gone by the time
> eventpoll_release() is called. Which presumably is some interaction with
> the somewhat suspicious file reference management that dma-buf is doing.
> But I didn't look into that much, outside of noting it looks a bit
> suspect.

Not yet, though. Here's (one) race state from the analysis. I added lines
for the dma_fence_add_callback()/dma_buf_poll_cb() case, since that's
the case that would escape any eventpoll_release/epoll_wait
synchronization (if it exists?):

close(dmabuf->file)
__fput_sync (f_count == 1, last ref)
f_count-- (f_count == 0 now)
__fput
                                     epoll_wait
                                     vfs_poll(dmabuf->file)
                                     get_file(dmabuf->file)(f_count == 1)
                                     dma_fence_add_callback()
eventpoll_release
dmabuf->file deallocation
                                     dma_buf_poll_cb()
                                     fput(dmabuf->file) (f_count == 1)
                                     f_count--
                                     dmabuf->file deallocation

Without fences to create a background callback, we just do a double-free:

close(dmabuf->file)
__fput_sync (f_count == 1, last ref)
f_count-- (f_count == 0 now)
__fput
                                     epoll_wait
                                     vfs_poll(dmabuf->file)
                                     get_file(dmabuf->file)(f_count == 1)
                                     dma_buf_poll_cb()
                                     fput(dmabuf->file) (f_count == 1)
                                     f_count--
                                     eventpoll_release
                                     dmabuf->file deallocation
eventpoll_release
dmabuf->file deallocation


get_file(), via epoll_wait()->vfs_poll()->dma_buf_poll(), has raised
f_count again. Then eventpoll_release() is doing things to remove
dmabuf->file from the eventpoll lists, but I *think* this is synchronized
so that an epoll_wait() will only call .poll handlers with a valid
(though possibly f_count==0) file, but I can't figure out where that
happens. (If it's not happening, we have a much bigger problem, but I
imagine we'd see massive corruption all the time, which we don't.)

So, yeah, I can't figure out how eventpoll_release() and epoll_wait()
are expected to behave safely for .poll handlers.

Regardless, for the simple case: it seems like it's just totally illegal
to use get_file() in a poll handler. Is this known/expected? And if so,
how can dmabuf possibly deal with that?

-- 
Kees Cook
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
