Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 5776B8BBCB9
	for <lists+linaro-mm-sig@lfdr.de>; Sat,  4 May 2024 17:32:35 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 408E13F06F
	for <lists+linaro-mm-sig@lfdr.de>; Sat,  4 May 2024 15:32:34 +0000 (UTC)
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	by lists.linaro.org (Postfix) with ESMTPS id 126753F06F
	for <linaro-mm-sig@lists.linaro.org>; Sat,  4 May 2024 15:32:24 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linux-foundation.org header.s=google header.b=AjLU0Pe5;
	spf=pass (lists.linaro.org: domain of torvalds@linuxfoundation.org designates 209.85.218.43 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org;
	dmarc=none
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-a59b58fe083so31423266b.0
        for <linaro-mm-sig@lists.linaro.org>; Sat, 04 May 2024 08:32:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linux-foundation.org; s=google; t=1714836743; x=1715441543; darn=lists.linaro.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=BF+X0IVed+h7jlJZMJqRgUDnAGAy0IxXXOyqwBdkEc0=;
        b=AjLU0Pe5GS3tiNA6zxalwk5APPcyO2oOHCkw1223lFZ8rcLxGD0+Fz06FRC1ucawDe
         tYqRy/PJXJewzhFkXbRrTUlSA6qdOanqR0aVrBzf/lME3kFBbUjVWh7BSzS3G6XuZrRp
         pI6tfBM+wSUAElpHAf/LGTqVO12zFIgM99JCk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714836743; x=1715441543;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BF+X0IVed+h7jlJZMJqRgUDnAGAy0IxXXOyqwBdkEc0=;
        b=ghEim1pINPHKnmmNRMD7MOkolHzEJ+4wWrSIsEy9IdcfwBfTqJBILgPTSNWS9BHH/z
         usCqinWX3gY47ZarUyvwHRa+dSPK4hFKpEXMMy2fLtITElnYvYgu5q1LNYIiCxYAcINa
         oVTF1j7lsZXid07JIqte7KT+YXHvjpiMfz+EMA9xnsRDVjnv/5CX8A+aksObJVk8KYdO
         DptFhgixyd2qIO9r1KfE54697XEl5JbaBfncQ1SfuDxj75XKrq43tmg3Fv/5SRh25vxJ
         TSPCsSGuRmZz3CTQEuQsDoo2PI5ZkSVHdYRQ2Eq9zQN4b3hw9wkswssx/DCjKnVeXOel
         n03Q==
X-Forwarded-Encrypted: i=1; AJvYcCW0IBrjYvJtgcc+XAGwZ6+Z5BUyPCg6JEgMDGDS8Nz9XyEH+tZEIgTD4LGBu0Q+sMH3ckC52jo770ABaKyiJJsfqR0ObxYRvVXlHNIFCXc=
X-Gm-Message-State: AOJu0Yxv8vfnEZyu2jij8fzK1N9z8DRslPo4y9iSErnPSgi2i2OJQ/J4
	UCxy4Kcj+UpDsMfhDa/kZ3Dq4yaR84UjMreEBJvD/T4fscHYATjCVgBnbSUqm1x3+Gg4UyMhZZm
	EZ0sFgA==
X-Google-Smtp-Source: AGHT+IHk4JnXHZK7cJ7k/qTwUb+yS9sLdgNO+38SzYpQJ22eShRWIlkZ4BPiNP93hupUkTyxXuFIQQ==
X-Received: by 2002:a17:906:5fd5:b0:a59:9e55:748d with SMTP id k21-20020a1709065fd500b00a599e55748dmr2287641ejv.35.1714836743025;
        Sat, 04 May 2024 08:32:23 -0700 (PDT)
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com. [209.85.218.48])
        by smtp.gmail.com with ESMTPSA id v5-20020a1709060b4500b00a59a05c273csm1266352ejg.87.2024.05.04.08.32.22
        for <linaro-mm-sig@lists.linaro.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 04 May 2024 08:32:22 -0700 (PDT)
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-a59a8f0d941so104215766b.2
        for <linaro-mm-sig@lists.linaro.org>; Sat, 04 May 2024 08:32:22 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCW/sZ1qKnklAMTszJwa5IdHXb/X4PJq2Lgpff6oosqAxrtEREwgRxZG0NdyIzZScHyg0hJ7ne+5obls3B/CYjlN4LaWwwi6jy7e4azCnBk=
X-Received: by 2002:a17:906:5fd5:b0:a59:9e55:748d with SMTP id
 k21-20020a1709065fd500b00a599e55748dmr2287623ejv.35.1714836742417; Sat, 04
 May 2024 08:32:22 -0700 (PDT)
MIME-Version: 1.0
References: <202405031110.6F47982593@keescook> <20240503211129.679762-2-torvalds@linux-foundation.org>
 <20240503212428.GY2118490@ZenIV> <CAHk-=wjpsTEkHgo1uev3xGJ2bQXYShaRf3GPEqDWNgUuKx0JFw@mail.gmail.com>
 <20240504-wohngebiet-restwert-6c3c94fddbdd@brauner>
In-Reply-To: <20240504-wohngebiet-restwert-6c3c94fddbdd@brauner>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Sat, 4 May 2024 08:32:05 -0700
X-Gmail-Original-Message-ID: <CAHk-=wj_Fu1FkMFrjivQ=MGkwkKXZBuh0f4BEhcZHD5WCvHesw@mail.gmail.com>
Message-ID: <CAHk-=wj_Fu1FkMFrjivQ=MGkwkKXZBuh0f4BEhcZHD5WCvHesw@mail.gmail.com>
To: Christian Brauner <brauner@kernel.org>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 126753F06F
X-Spamd-Bar: -
X-Spamd-Result: default: False [-1.70 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	FORGED_SENDER(0.30)[torvalds@linux-foundation.org,torvalds@linuxfoundation.org];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[linux-foundation.org:s=google];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[linux-foundation.org];
	RCVD_COUNT_THREE(0.00)[3];
	FREEMAIL_CC(0.00)[zeniv.linux.org.uk,chromium.org,kernel.dk,amd.com,lists.freedesktop.org,vger.kernel.org,suse.cz,labbott.name,lists.linaro.org,gmail.com,linaro.org,syzkaller.appspotmail.com,googlegroups.com];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[linux-foundation.org:+];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	DNSWL_BLOCKED(0.00)[209.85.218.48:received,209.85.218.43:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[torvalds@linux-foundation.org,torvalds@linuxfoundation.org];
	RCPT_COUNT_TWELVE(0.00)[17];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TAGGED_RCPT(0.00)[045b454ab35fd82a35fb];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.218.43:from];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
Message-ID-Hash: UFI7NT5N7FYA7CUJYOIJUV5DQNWOQQGD
X-Message-ID-Hash: UFI7NT5N7FYA7CUJYOIJUV5DQNWOQQGD
X-MailFrom: torvalds@linuxfoundation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Al Viro <viro@zeniv.linux.org.uk>, keescook@chromium.org, axboe@kernel.dk, christian.koenig@amd.com, dri-devel@lists.freedesktop.org, io-uring@vger.kernel.org, jack@suse.cz, laura@labbott.name, linaro-mm-sig@lists.linaro.org, linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, minhquangbui99@gmail.com, sumit.semwal@linaro.org, syzbot+045b454ab35fd82a35fb@syzkaller.appspotmail.com, syzkaller-bugs@googlegroups.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] epoll: try to be a _bit_ better about file lifetimes
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/UFI7NT5N7FYA7CUJYOIJUV5DQNWOQQGD/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Sat, 4 May 2024 at 02:37, Christian Brauner <brauner@kernel.org> wrote:
>
> --- a/drivers/dma-buf/dma-buf.c
> +++ b/drivers/dma-buf/dma-buf.c
> @@ -244,13 +244,18 @@ static __poll_t dma_buf_poll(struct file *file, poll_table *poll)
>         if (!dmabuf || !dmabuf->resv)
>                 return EPOLLERR;
>
> +       if (!get_file_active(&dmabuf->file))
> +               return EPOLLERR;
[...]

I *really* don't think anything that touches dma-buf.c can possibly be right.

This is not a dma-buf.c bug.

This is purely an epoll bug.

Lookie here, the fundamental issue is that epoll can call '->poll()'
on a file descriptor that is being closed concurrently.

That means that *ANY* driver that relies on *any* data structure that
is managed by the lifetime of the 'struct file' will have problems.

Look, here's sock_poll():

    static __poll_t sock_poll(struct file *file, poll_table *wait)
    {
        struct socket *sock = file->private_data;

and that first line looks about as innocent as it possibly can, right?

Now, imagine that this is called from 'epoll' concurrently with the
file being closed for the last time (but it just hasn't _quite_
reached eventpoll_release() yet).

Now, imagine that the kernel is built with preemption, and the epoll
thread gets preempted _just_ before it loads 'file->private_data'.

Furthermore, the machine is under heavy load, and it just stays off
its CPU a long time.

Now, during this TOTALLY INNOCENT sock_poll(), in another thread, the
file closing completes, eventpoll_release() finishes, and the
preemption of the poll() thing just takes so long that you go through
an RCU period too, so that the actual file has been released too.

So now that totally innoced file->private_data load in the poll() is
probably going to get random data.

Yes, the file is allocated as SLAB_TYPESAFE_BY_RCU, so it's probably
still a file. Not guaranteed, even the slab will get fully free'd in
some situations. And yes, the above case is impossible to hit in
practice. You have to hit quite the small race window with an
operation that practically never happens in the first place.

But my point is that the fact that the problem with file->f_count
lifetimes happens for that dmabuf driver is not the fault of the
dmabuf code. Not at all.

It is *ENTIRELY* a bug in epoll, and the dmabuf code is probably just
easier to hit because it has a poll() function that does things that
have longer lifetimes than most things, and interacts more directly
with that f_count.

So I really don't understand why Al thinks this is "dmabuf does bad
things with f_count". It damn well does not. dma-buf is the GOOD GUY
here. It's doing things *PROPERLY*. It's taking refcounts like it damn
well should.

The fact that it takes ref-counts on something that the epoll code has
messed up is *NOT* its fault.

                Linus
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
