Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id CA0CA8BB3E0
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  3 May 2024 21:22:46 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id ADB3744800
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  3 May 2024 19:22:45 +0000 (UTC)
Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com [209.85.210.179])
	by lists.linaro.org (Postfix) with ESMTPS id A15F93F39D
	for <linaro-mm-sig@lists.linaro.org>; Fri,  3 May 2024 19:22:35 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=chromium.org header.s=google header.b=eQ9JNciY;
	spf=pass (lists.linaro.org: domain of keescook@chromium.org designates 209.85.210.179 as permitted sender) smtp.mailfrom=keescook@chromium.org;
	dmarc=pass (policy=none) header.from=chromium.org
Received: by mail-pf1-f179.google.com with SMTP id d2e1a72fcca58-6edb76d83d0so67984b3a.0
        for <linaro-mm-sig@lists.linaro.org>; Fri, 03 May 2024 12:22:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1714764155; x=1715368955; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=wZE9sdMty9EFGzepC01irLfs4hOfSOdCceQaPVz49U0=;
        b=eQ9JNciYNBOsyQl9ZCX6fbMKtSe+7BBaZIP2Zr5XVNwyha9jI+2B8nuop8t8kSoyHf
         ohKcunRfUFxoTrDFJELVON1zpKUWMxZv9r6ey6lHCDaYyjLqu88wmcvcQKnUa2ql0PPg
         4Jzj2PVqT/XHkmI6V5Cm6C5OwpMyz4s2HtrwI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714764155; x=1715368955;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wZE9sdMty9EFGzepC01irLfs4hOfSOdCceQaPVz49U0=;
        b=w5EB6DHaN5aeIuv3A65q180ayTgMBLqUPIC5kW0em/A1fzIYg81hG7bZovUZ2kGy2h
         CUXTc63VNYEAoMtQWV6WNPT6iQgJhAw+HSGn/+MTjiqCDE0clldt9GXrS8xLXVqQVrON
         xZKpW7/k4Ajv1c3MgN4pmqjONKdcCVr/iJnqpYju1RXzzXvIWm1xjwx/XbAjXXgqpZpH
         Wjc3Jcfg7bM37sa+I6p/RjC0Lw41mcSwBJIvoUkwzOTAOGnS33yqqV81fCqGJzrWdrSv
         c+LM6FWq3QZUwM/YLb9u50hSzmbdQpXBfU8f6mFUvM0mSubkmyLm17VklP5BaaMNlp8N
         szXg==
X-Forwarded-Encrypted: i=1; AJvYcCV86MeywIknDOY6H8eju8py8IDZFLbWzLCK1SA2jZ6uvsmngwOsyGbTrS0xUiJx7cFrTUKC6ecEXe7zykmyyh4PYI3+F86REJiK1lqRtEc=
X-Gm-Message-State: AOJu0Yw6GRlKHWownjpltMl6lRsWRyiHrvT9FQ7ewTw9Kb5y1/YiHxO+
	YtLjXTdgt7eW+0Jgak9nOKQwjQWWrHtrIUZSwzKKD0g978MEUnVLXNkyfIky/A==
X-Google-Smtp-Source: AGHT+IH/cnBf5AmDAraYkoF01FtIBT3d+Li+us/ROEA5peZIO3ZUwaNqrc+r9saLXIGgSIOvwv5RWw==
X-Received: by 2002:a05:6a00:801:b0:6ed:21d5:fc2c with SMTP id m1-20020a056a00080100b006ed21d5fc2cmr4136967pfk.26.1714764154703;
        Fri, 03 May 2024 12:22:34 -0700 (PDT)
Received: from www.outflux.net ([198.0.35.241])
        by smtp.gmail.com with ESMTPSA id y29-20020aa79e1d000000b006ed59172d2fsm3415250pfq.87.2024.05.03.12.22.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 May 2024 12:22:33 -0700 (PDT)
Date: Fri, 3 May 2024 12:22:33 -0700
From: Kees Cook <keescook@chromium.org>
To: Jens Axboe <axboe@kernel.dk>
Message-ID: <202405031207.9D62DA4973@keescook>
References: <0000000000002d631f0615918f1e@google.com>
 <7c41cf3c-2a71-4dbb-8f34-0337890906fc@gmail.com>
 <202405031110.6F47982593@keescook>
 <64b51cc5-9f5b-4160-83f2-6d62175418a2@kernel.dk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <64b51cc5-9f5b-4160-83f2-6d62175418a2@kernel.dk>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: A15F93F39D
X-Spamd-Bar: +
X-Spamd-Result: default: False [1.90 / 15.00];
	MID_END_EQ_FROM_USER_PART(4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[chromium.org,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[chromium.org:s=google];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.210.179:from];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_CC(0.00)[gmail.com,zeniv.linux.org.uk,kernel.org,syzkaller.appspotmail.com,vger.kernel.org,suse.cz,googlegroups.com,linaro.org,amd.com,lists.freedesktop.org,lists.linaro.org,labbott.name];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[chromium.org:+];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	TO_DN_SOME(0.00)[];
	DNSWL_BLOCKED(0.00)[198.0.35.241:received,209.85.210.179:from];
	DWL_DNSWL_BLOCKED(0.00)[chromium.org:dkim];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[045b454ab35fd82a35fb];
	SUBJECT_HAS_QUESTION(0.00)[]
X-Spam-Level: *
X-Rspamd-Action: no action
Message-ID-Hash: BPLIZVYOI5VZSN3ZLWXURPBV2NSHHJWC
X-Message-ID-Hash: BPLIZVYOI5VZSN3ZLWXURPBV2NSHHJWC
X-MailFrom: keescook@chromium.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Bui Quang Minh <minhquangbui99@gmail.com>, Al Viro <viro@zeniv.linux.org.uk>, Christian Brauner <brauner@kernel.org>, syzbot <syzbot+045b454ab35fd82a35fb@syzkaller.appspotmail.com>, io-uring@vger.kernel.org, jack@suse.cz, linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org, syzkaller-bugs@googlegroups.com, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Laura Abbott <laura@labbott.name>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: get_file() unsafe under epoll (was Re: [syzbot] [fs?] [io-uring?] general protection fault in __ep_remove)
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/BPLIZVYOI5VZSN3ZLWXURPBV2NSHHJWC/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Fri, May 03, 2024 at 12:49:11PM -0600, Jens Axboe wrote:
> On 5/3/24 12:26 PM, Kees Cook wrote:
> > Thanks for doing this analysis! I suspect at least a start of a fix
> > would be this:
> > 
> > diff --git a/drivers/dma-buf/dma-buf.c b/drivers/dma-buf/dma-buf.c
> > index 8fe5aa67b167..15e8f74ee0f2 100644
> > --- a/drivers/dma-buf/dma-buf.c
> > +++ b/drivers/dma-buf/dma-buf.c
> > @@ -267,9 +267,8 @@ static __poll_t dma_buf_poll(struct file *file, poll_table *poll)
> >  
> >  		if (events & EPOLLOUT) {
> >  			/* Paired with fput in dma_buf_poll_cb */
> > -			get_file(dmabuf->file);
> > -
> > -			if (!dma_buf_poll_add_cb(resv, true, dcb))
> > +			if (!atomic_long_inc_not_zero(&dmabuf->file) &&
> > +			    !dma_buf_poll_add_cb(resv, true, dcb))
> >  				/* No callback queued, wake up any other waiters */
> 
> Don't think this is sane at all. I'm assuming you meant:
> 
> 	atomic_long_inc_not_zero(&dmabuf->file->f_count);

Oops, yes, sorry. I was typed from memory instead of copy/paste.

> but won't fly as you're not under RCU in the first place. And what
> protects it from being long gone before you attempt this anyway? This is
> sane way to attempt to fix it, it's completely opposite of what sane ref
> handling should look like.
> 
> Not sure what the best fix is here, seems like dma-buf should hold an
> actual reference to the file upfront rather than just stash a pointer
> and then later _hope_ that it can just grab a reference. That seems
> pretty horrible, and the real source of the issue.

AFAICT, epoll just doesn't hold any references at all. It depends,
I think, on eventpoll_release() (really eventpoll_release_file())
synchronizing with epoll_wait() (but I don't see how this happens, and
the race seems to be against ep_item_poll() ...?)

I'm really confused about how eventpoll manages the lifetime of polled
fds.

> > Due to this issue I've proposed fixing get_file() to detect pathological states:
> > https://lore.kernel.org/lkml/20240502222252.work.690-kees@kernel.org/
> 
> I don't think this would catch this case, as the memory could just be
> garbage at this point.

It catches it just fine! :) I tested it against the published PoC.

And for cases where further allocations have progressed far enough to
corrupt the freed struct file and render the check pointless, nothing
different has happened than what happens today. At least now we have a
window to catch the situation across the time frame before it is both
reallocated _and_ the contents at the f_count offset gets changed to
non-zero.

-- 
Kees Cook
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
