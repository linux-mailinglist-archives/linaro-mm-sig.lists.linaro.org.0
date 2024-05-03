Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id D9CAC8BB863
	for <lists+linaro-mm-sig@lfdr.de>; Sat,  4 May 2024 01:41:51 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E55AF44824
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  3 May 2024 23:41:50 +0000 (UTC)
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com [209.85.208.172])
	by lists.linaro.org (Postfix) with ESMTPS id E66433F06F
	for <linaro-mm-sig@lists.linaro.org>; Fri,  3 May 2024 23:41:37 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linux-foundation.org header.s=google header.b=c6ASU4XI;
	spf=pass (lists.linaro.org: domain of torvalds@linuxfoundation.org designates 209.85.208.172 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org;
	dmarc=none
Received: by mail-lj1-f172.google.com with SMTP id 38308e7fff4ca-2d8a24f8a3cso2111741fa.1
        for <linaro-mm-sig@lists.linaro.org>; Fri, 03 May 2024 16:41:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linux-foundation.org; s=google; t=1714779697; x=1715384497; darn=lists.linaro.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ap01jwoCR0DRWLobuG8Czpgd5Vwn2tKoOeVWkObJWkg=;
        b=c6ASU4XIF7GW5j7gTbtQFI2Kjd0FDd+z7QFFMtz1mVmhkL+mDXZ5Tp2lURutoSydnI
         OTftJ6YJhRJPj+NKJuK0oRWPfQi1tkqP9t+a0GXYahmD2WOmS2VR/PdkByesZHj/v5Ou
         CW9CuJ/oMVGbz56E0NqsFkLYZHhhjwhSlgmLo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714779697; x=1715384497;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ap01jwoCR0DRWLobuG8Czpgd5Vwn2tKoOeVWkObJWkg=;
        b=BBypGrS4gGLF1OFYIdL6jiX7SADHTrKBZiFjWdiZ7pcqgfTVqIV6WRr9jmXa79Nt1s
         ntgVWPW7Qjd8gLwjkW3p+/o5L8LrWNm8bT8prDJ71Drk8hFlGjsgsj/EQqhe3XiW0Lyv
         RKCU1FrrnTPHetWdk3nVcmmEhEC5nO/b82WnaMz8twq5/NBEGZs7nMXh3BXHOV65XvPo
         dJEOrY+meGaRrRrogxW+mu6Uc7gP710oW6felCrunGFWbPvS06zDs3+CU4fbdGjNYskK
         3NNl9f+fIIraUYmoFYnyR4QbqUWvYyM/gqGDKx3SF/KM6WhiGv9OWeTWBN0P1Zduo7Yw
         G/Ug==
X-Forwarded-Encrypted: i=1; AJvYcCVW5Fyn613J1WFB8tQTnVgTepPG+pCPNhfexROJmNcdL0h5XkPQNcdGDEXkh19aDGHLln9s/aHfmYmFU0esYhXoeuUi7xMDo4j3TYi8E7Y=
X-Gm-Message-State: AOJu0Yx7NxrJx402AG8BaEccZz6JBIZPmc+66veuV4wdWBvhcrAL84ZF
	145r0puhD1KTXe4dtGSTZSzsuzpQP4IxHvApmVAjtXNknMM/CDeZYA7kQxPHlQWd8UfgxIPlSmh
	SWX/gbw==
X-Google-Smtp-Source: AGHT+IHpRXvI1bvMFZUTY8O6Ng6MsKkiW5q2odKMPIRXhfEfWSqcHMs5yxhd/dpWxVPzwkpW+Vbinw==
X-Received: by 2002:a2e:3e01:0:b0:2da:b59c:a94b with SMTP id l1-20020a2e3e01000000b002dab59ca94bmr2155121lja.25.1714779696669;
        Fri, 03 May 2024 16:41:36 -0700 (PDT)
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com. [209.85.167.47])
        by smtp.gmail.com with ESMTPSA id 2-20020a05651c008200b002da31f5851bsm678242ljq.28.2024.05.03.16.41.36
        for <linaro-mm-sig@lists.linaro.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 03 May 2024 16:41:36 -0700 (PDT)
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-51ff65b1e14so84428e87.2
        for <linaro-mm-sig@lists.linaro.org>; Fri, 03 May 2024 16:41:36 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCX9JcZCfmoyQG+HrUjduuJfy925K28NqbXC6XwKXRZ6zYEOmeiDhKFY8lPPI1N+plWitxoerraCIF6OwjChAw3annTfKf5w2b8x8oo1axY=
X-Received: by 2002:ac2:488d:0:b0:51b:fc6c:cbf6 with SMTP id
 x13-20020ac2488d000000b0051bfc6ccbf6mr2434386lfc.16.1714779695990; Fri, 03
 May 2024 16:41:35 -0700 (PDT)
MIME-Version: 1.0
References: <202405031110.6F47982593@keescook> <20240503211129.679762-2-torvalds@linux-foundation.org>
 <20240503212428.GY2118490@ZenIV> <CAHk-=wjpsTEkHgo1uev3xGJ2bQXYShaRf3GPEqDWNgUuKx0JFw@mail.gmail.com>
 <20240503214531.GB2118490@ZenIV> <CAHk-=wgC+QpveKCJpeqsaORu7htoNNKA8mp+d9mvJEXmSKjhbw@mail.gmail.com>
 <202405031529.2CD1BFED37@keescook> <20240503230318.GF2118490@ZenIV> <202405031616.793DF7EEE@keescook>
In-Reply-To: <202405031616.793DF7EEE@keescook>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Fri, 3 May 2024 16:41:19 -0700
X-Gmail-Original-Message-ID: <CAHk-=wjoXgm=j=vt9S2dcMk3Ws6Z8ukibrEncFZcxh5n77F6Dg@mail.gmail.com>
Message-ID: <CAHk-=wjoXgm=j=vt9S2dcMk3Ws6Z8ukibrEncFZcxh5n77F6Dg@mail.gmail.com>
To: Kees Cook <keescook@chromium.org>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: E66433F06F
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-5.70 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	FORGED_SENDER(0.30)[torvalds@linux-foundation.org,torvalds@linuxfoundation.org];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[linux-foundation.org:s=google];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[linux-foundation.org];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[zeniv.linux.org.uk,kernel.dk,kernel.org,amd.com,lists.freedesktop.org,vger.kernel.org,suse.cz,labbott.name,lists.linaro.org,gmail.com,linaro.org,syzkaller.appspotmail.com,googlegroups.com];
	DKIM_TRACE(0.00)[linux-foundation.org:+];
	MISSING_XM_UA(0.00)[];
	DNSWL_BLOCKED(0.00)[209.85.208.172:from,209.85.167.47:received];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[torvalds@linux-foundation.org,torvalds@linuxfoundation.org];
	RCPT_COUNT_TWELVE(0.00)[17];
	NEURAL_HAM(-0.00)[-1.000];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.208.172:from];
	TAGGED_RCPT(0.00)[045b454ab35fd82a35fb];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
Message-ID-Hash: JVDTKK6T25AFNU3DKIMUWCQGB3CXCVTD
X-Message-ID-Hash: JVDTKK6T25AFNU3DKIMUWCQGB3CXCVTD
X-MailFrom: torvalds@linuxfoundation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Al Viro <viro@zeniv.linux.org.uk>, axboe@kernel.dk, brauner@kernel.org, christian.koenig@amd.com, dri-devel@lists.freedesktop.org, io-uring@vger.kernel.org, jack@suse.cz, laura@labbott.name, linaro-mm-sig@lists.linaro.org, linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, minhquangbui99@gmail.com, sumit.semwal@linaro.org, syzbot+045b454ab35fd82a35fb@syzkaller.appspotmail.com, syzkaller-bugs@googlegroups.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] epoll: try to be a _bit_ better about file lifetimes
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/JVDTKK6T25AFNU3DKIMUWCQGB3CXCVTD/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Fri, 3 May 2024 at 16:23, Kees Cook <keescook@chromium.org> wrote:
>
> static bool __must_check get_dma_buf_unless_doomed(struct dma_buf *dmabuf)
> {
>         return atomic_long_inc_not_zero(&dmabuf->file->f_count) != 0L;
> }
>
> If we end up adding epi_fget(), we'll have 2 cases of using
> "atomic_long_inc_not_zero" for f_count. Do we need some kind of blessed
> helper to live in file.h or something, with appropriate comments?

I wonder if we could try to abstract this out a bit more.

These games with non-ref-counted file structures *feel* a bit like the
games we play with non-ref-counted (aka "stashed") 'struct dentry'
that got fairly recently cleaned up with path_from_stashed() when both
nsfs and pidfs started doing the same thing.

I'm not loving the TTM use of this thing, but at least the locking and
logic feels a lot more straightforward (ie the
atomic_long_inc_not_zero() here is clealy under the 'prime->mutex'
lock

IOW, the tty use looks correct to me, and it has fairly simple locking
and is just catching the the race between 'fput()' decrementing the
refcount and and 'file->f_op->release()' doing the actual release.

You are right that it's similar to the epoll thing in that sense, it
just looks a _lot_ more straightforward to me (and, unlike epoll,
doesn't look actively buggy right now).

Could we abstract out this kind of "stashed file pointer" so that we'd
have a *common* form for this? Not just the inc_not_zero part, but the
locking rule too?

              Linus
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
