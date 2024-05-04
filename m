Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DF698BBCD5
	for <lists+linaro-mm-sig@lfdr.de>; Sat,  4 May 2024 17:40:55 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 62EC143D48
	for <lists+linaro-mm-sig@lfdr.de>; Sat,  4 May 2024 15:40:54 +0000 (UTC)
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	by lists.linaro.org (Postfix) with ESMTPS id C283D3F06F
	for <linaro-mm-sig@lists.linaro.org>; Sat,  4 May 2024 15:40:43 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linux-foundation.org header.s=google header.b=fbv0zExB;
	spf=pass (lists.linaro.org: domain of torvalds@linuxfoundation.org designates 209.85.218.54 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org;
	dmarc=none
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-a59a64db066so126020066b.3
        for <linaro-mm-sig@lists.linaro.org>; Sat, 04 May 2024 08:40:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linux-foundation.org; s=google; t=1714837243; x=1715442043; darn=lists.linaro.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=PFxw8P3AYgeC7IB6rTn+68WOAU10n6cRPv/6X7o+SOY=;
        b=fbv0zExBbFHkPmdg+vNA/ACQVTMLJPY4hDreGZHFJVX4bLAehyqEzjTfVg8Dj/9Fc4
         FVXsyT5kORzNfCdp5SgedVyVfeJ57ejqyclCWiBCjim7xg4Ex3T8p2G7G1sGtw7PFQqv
         EDUrhoQEEdz86XlPk4t/N3Y4bHSNFpXwkj7bI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714837243; x=1715442043;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PFxw8P3AYgeC7IB6rTn+68WOAU10n6cRPv/6X7o+SOY=;
        b=fKVQ9XDUDhA4A/DHBgj+s2BoB+yaMLOh7PKiiIIVa05zvAgXFCSj4wUetGefKf0+hy
         ELUF+tIPUwz6j1toTlL2huGtaOj40ymUiWOsrMESsxGrM2APaPX0T7XPHyONL49JUlbS
         GqJ1Ptw9vFegVWmzDYyzgtbydux1oacv+RVHdGwgVcKLozHjczd5Fkppvx8sNqctdMp0
         juEb8yMUvxlBcQcFwRD92gaHCcFkZL59yM/hcSv1dh8+DisTYR1e6I21Gmq50VuJY1V6
         OFxBXF2E4S05nMtoH0cPS18ixHRysfFG7DQ3H0V2qe+pfTELDlS6686oO2O+M5+RXeps
         6vqg==
X-Forwarded-Encrypted: i=1; AJvYcCWPYyWr4+1mqOU7boyPxQx4gtv/w1vQ5rbk/oNwMDLpuj0x3RzDR/y7xueoN4cySYgeaVbXpMxaVm7a3MTO4UqEhQlrKN0U7cEId6k05Dk=
X-Gm-Message-State: AOJu0Ywfh85+1pwhJHJsmqba34h5JTgzkagNER/ncBV6hQhwfqeM76EW
	h+RpdjFpkh2slya/SmcEshhE9syfSBG7KM71S/n2icYtD7/NZyDgMLGDZln3M/c8OjguGK3ODfA
	74VwpIg==
X-Google-Smtp-Source: AGHT+IHlqwNzCzph7YIkqOsws1ibGkKVvz9tJB+5LeCv61AKRDCJk02azkns8qwGlxwQd48Kwmy8EQ==
X-Received: by 2002:a50:d659:0:b0:572:1625:ae99 with SMTP id c25-20020a50d659000000b005721625ae99mr3305932edj.31.1714837242826;
        Sat, 04 May 2024 08:40:42 -0700 (PDT)
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com. [209.85.218.54])
        by smtp.gmail.com with ESMTPSA id i15-20020a0564020f0f00b005726dceb2easm3049838eda.20.2024.05.04.08.40.42
        for <linaro-mm-sig@lists.linaro.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 04 May 2024 08:40:42 -0700 (PDT)
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-a59a9d66a51so91468366b.2
        for <linaro-mm-sig@lists.linaro.org>; Sat, 04 May 2024 08:40:42 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXkdUOFYpI8yNoSlC7txabqHwxcTcgMn8NT6lNcKVTCIfUGXc172Z4cC5Uspe0f/B5EfhRUpIVsFYMTfm/9DVbFrfVWNZxJVFjcOwMMVk4=
X-Received: by 2002:a17:906:cf83:b0:a55:75f6:ce0f with SMTP id
 um3-20020a170906cf8300b00a5575f6ce0fmr3540131ejb.13.1714837242162; Sat, 04
 May 2024 08:40:42 -0700 (PDT)
MIME-Version: 1.0
References: <202405031110.6F47982593@keescook> <20240503211129.679762-2-torvalds@linux-foundation.org>
 <20240503212428.GY2118490@ZenIV> <CAHk-=wjpsTEkHgo1uev3xGJ2bQXYShaRf3GPEqDWNgUuKx0JFw@mail.gmail.com>
 <20240504-wohngebiet-restwert-6c3c94fddbdd@brauner> <CAHk-=wj_Fu1FkMFrjivQ=MGkwkKXZBuh0f4BEhcZHD5WCvHesw@mail.gmail.com>
In-Reply-To: <CAHk-=wj_Fu1FkMFrjivQ=MGkwkKXZBuh0f4BEhcZHD5WCvHesw@mail.gmail.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Sat, 4 May 2024 08:40:25 -0700
X-Gmail-Original-Message-ID: <CAHk-=wirxPSQgRV1u7t4qS1t4ED7w7OeehdUSC-LYZXspqa49w@mail.gmail.com>
Message-ID: <CAHk-=wirxPSQgRV1u7t4qS1t4ED7w7OeehdUSC-LYZXspqa49w@mail.gmail.com>
To: Christian Brauner <brauner@kernel.org>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: C283D3F06F
X-Spamd-Bar: -
X-Spamd-Result: default: False [-1.80 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	FORGED_SENDER(0.30)[torvalds@linux-foundation.org,torvalds@linuxfoundation.org];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[linux-foundation.org:s=google];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.218.54:from];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_TLS_LAST(0.00)[];
	URIBL_BLOCKED(0.00)[linux-foundation.org:email,linux-foundation.org:dkim];
	RCVD_COUNT_THREE(0.00)[3];
	ARC_NA(0.00)[];
	DMARC_NA(0.00)[linux-foundation.org];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[zeniv.linux.org.uk,chromium.org,kernel.dk,amd.com,lists.freedesktop.org,vger.kernel.org,suse.cz,labbott.name,lists.linaro.org,gmail.com,linaro.org,syzkaller.appspotmail.com,googlegroups.com];
	DKIM_TRACE(0.00)[linux-foundation.org:+];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[torvalds@linux-foundation.org,torvalds@linuxfoundation.org];
	RCPT_COUNT_TWELVE(0.00)[17];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[045b454ab35fd82a35fb];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
Message-ID-Hash: RLP7EPM4IZUNQRPOODTWJG7GZC5QEJFV
X-Message-ID-Hash: RLP7EPM4IZUNQRPOODTWJG7GZC5QEJFV
X-MailFrom: torvalds@linuxfoundation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Al Viro <viro@zeniv.linux.org.uk>, keescook@chromium.org, axboe@kernel.dk, christian.koenig@amd.com, dri-devel@lists.freedesktop.org, io-uring@vger.kernel.org, jack@suse.cz, laura@labbott.name, linaro-mm-sig@lists.linaro.org, linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, minhquangbui99@gmail.com, sumit.semwal@linaro.org, syzbot+045b454ab35fd82a35fb@syzkaller.appspotmail.com, syzkaller-bugs@googlegroups.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] epoll: try to be a _bit_ better about file lifetimes
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/RLP7EPM4IZUNQRPOODTWJG7GZC5QEJFV/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Sat, 4 May 2024 at 08:32, Linus Torvalds
<torvalds@linux-foundation.org> wrote:
>
> Now, during this TOTALLY INNOCENT sock_poll(), in another thread, the
> file closing completes, eventpoll_release() finishes [..]

Actually, Al is right that ep_item_poll() should be holding the
ep->mtx, so eventpoll_release() -> eventpoll_release_file_file() ->
mutex_lock(&ep->mtx) should block and the file doesn't actually get
released.

So I guess the sock_poll() issue cannot happen. It does need some
poll() function that does 'fget()', and believes that it works.

But because the f_count has already gone down to zero, fget() doesn't
work, and doesn't keep the file around, and you have the bug.

The cases that do fget() in poll() are probably race, but they aren't
buggy. epoll is buggy.

So my example wasn't going to work, but the argument isn't really any
different, it's just a much more limited case that breaks.

And maybe it's even *only* dma-buf that does that fget() in its
->poll() function. Even *then* it's not a dma-buf.c bug.

               Linus
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
