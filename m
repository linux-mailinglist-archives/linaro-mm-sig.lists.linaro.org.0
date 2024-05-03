Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 978278BB59F
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  3 May 2024 23:25:16 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A6A2544806
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  3 May 2024 21:25:15 +0000 (UTC)
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
	by lists.linaro.org (Postfix) with ESMTPS id B956B3F0A4
	for <linaro-mm-sig@lists.linaro.org>; Fri,  3 May 2024 21:25:04 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linux-foundation.org header.s=google header.b=cX3ZKQR3;
	spf=pass (lists.linaro.org: domain of torvalds@linuxfoundation.org designates 209.85.208.182 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org;
	dmarc=none
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-2e22a1bed91so1565831fa.0
        for <linaro-mm-sig@lists.linaro.org>; Fri, 03 May 2024 14:25:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linux-foundation.org; s=google; t=1714771503; x=1715376303; darn=lists.linaro.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=fhxz4aHpmXZJ6K0C5hNTESMtOJDx3oTLGnKkbndye9Q=;
        b=cX3ZKQR3Nl7y4XAlIzwlzxRZvU10XHrvbdITspTN6tZXFcc2g72UZz1jx5gKjMtfoB
         mxlhlCg4OuYgIzpY+5hpbxCcrAFoa3vTCe6BT76/pGxSGupxPaSVkhWZdiQWXwT7pAfx
         66VT4oOc9H2b0ETi+3xV2qanIo0ttLDzUtfdU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714771503; x=1715376303;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fhxz4aHpmXZJ6K0C5hNTESMtOJDx3oTLGnKkbndye9Q=;
        b=VkBeAIr374Sfhk+53rkKN4shpnBsrZgfztNSgvC0QkiXCPyW0pVcd/Y6/4WsBJ0j/j
         dAMTlL1Cf/QieZnE3uOfGWX9TzOpEIfadkFUs/8l+Spl2O8VsjsaKbquQ4PhocN5FIhG
         ZS3t9IW+YIO+gaZyLVQ+wkPu4hv3F12mEc7MEs8FYFOD8fCSjIgqcufj9iEAUVtNg9Cp
         lrtfPFyV/yS3W28TNhy+jEJSRGv2sui3IqVbyh0Enhfazt9P/DRRCE9y5xsa3kYUVluf
         2TnbPv6iuuCUBkvmMSPzflfc4sRK7l9eMJCw19FIYBGOQZ7Ov8/ecoYXSbBEqReKLJpd
         l56Q==
X-Forwarded-Encrypted: i=1; AJvYcCXmhNKqV9BgVKAbslGd7boIBCHXcw4lIw5Htny2LiIoRj1gzSIUx7HegBbU7b9BTjtxKGrxzRIoF1rSY97kKQviCf6yaEUh5QH0wkUaO2Q=
X-Gm-Message-State: AOJu0YyGpSIpnGoMx8bbNHvgiJVt/fGUVdxjm5Rr0FVb6IWxAL07seO0
	ZVb0V6+AcWkDBQ9nbUPOcGAbY78fAvubOowatgha6xBeQoHszfZn8HK8GEFFsJGBF0S2OmE/j+F
	JLTk1rg==
X-Google-Smtp-Source: AGHT+IH+ihWbZw6DnitqubPmDGG0cFj0xcacKGUGmgZVUMmPqv43q/vkxKu/6rwnU5UDnOdKvtFh0A==
X-Received: by 2002:a2e:be05:0:b0:2dd:cd17:a695 with SMTP id z5-20020a2ebe05000000b002ddcd17a695mr3207205ljq.18.1714771503331;
        Fri, 03 May 2024 14:25:03 -0700 (PDT)
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com. [209.85.167.53])
        by smtp.gmail.com with ESMTPSA id c22-20020a05651c015600b002e1ba4f39dbsm607032ljd.102.2024.05.03.14.25.02
        for <linaro-mm-sig@lists.linaro.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 03 May 2024 14:25:02 -0700 (PDT)
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-51f300b318cso78978e87.3
        for <linaro-mm-sig@lists.linaro.org>; Fri, 03 May 2024 14:25:02 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUDEkOJvnn+eo6ZN6Y5ulnQGM2znsP7s7ZAr6M+p3t0hIzkSfu/AtWZU3CS+ByHyjJ6dLh5VPkQDrb2+6Iq4tt8Io2ZXBbbjY6PconiZ/0=
X-Received: by 2002:a19:381a:0:b0:51c:68a3:6f8e with SMTP id
 f26-20020a19381a000000b0051c68a36f8emr2449065lfa.31.1714771502428; Fri, 03
 May 2024 14:25:02 -0700 (PDT)
MIME-Version: 1.0
References: <0000000000002d631f0615918f1e@google.com> <7c41cf3c-2a71-4dbb-8f34-0337890906fc@gmail.com>
 <202405031110.6F47982593@keescook> <64b51cc5-9f5b-4160-83f2-6d62175418a2@kernel.dk>
 <202405031207.9D62DA4973@keescook> <d6285f19-01aa-49c8-8fef-4b5842136215@kernel.dk>
 <202405031237.B6B8379@keescook> <202405031325.B8979870B@keescook> <20240503211109.GX2118490@ZenIV>
In-Reply-To: <20240503211109.GX2118490@ZenIV>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Fri, 3 May 2024 14:24:45 -0700
X-Gmail-Original-Message-ID: <CAHk-=wj0de-P2Q=Gz2uyrWBHagT25arLbN0Lyg=U6fT7psKnQA@mail.gmail.com>
Message-ID: <CAHk-=wj0de-P2Q=Gz2uyrWBHagT25arLbN0Lyg=U6fT7psKnQA@mail.gmail.com>
To: Al Viro <viro@zeniv.linux.org.uk>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: B956B3F0A4
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-5.70 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	FORGED_SENDER(0.30)[torvalds@linux-foundation.org,torvalds@linuxfoundation.org];
	R_DKIM_ALLOW(-0.20)[linux-foundation.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCPT_COUNT_TWELVE(0.00)[17];
	DMARC_NA(0.00)[linux-foundation.org];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[chromium.org,kernel.dk,gmail.com,kernel.org,syzkaller.appspotmail.com,vger.kernel.org,suse.cz,googlegroups.com,linaro.org,amd.com,lists.freedesktop.org,lists.linaro.org,labbott.name];
	DKIM_TRACE(0.00)[linux-foundation.org:+];
	DNSWL_BLOCKED(0.00)[209.85.167.53:received];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[torvalds@linux-foundation.org,torvalds@linuxfoundation.org];
	RCVD_IN_DNSWL_NONE(0.00)[209.85.208.182:from];
	NEURAL_HAM(-0.00)[-1.000];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.208.182:from];
	MISSING_XM_UA(0.00)[];
	TAGGED_RCPT(0.00)[045b454ab35fd82a35fb];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	SUBJECT_HAS_QUESTION(0.00)[]
X-Rspamd-Action: no action
Message-ID-Hash: H45CLY7WQP524I6UVBJYALT224O2PSIM
X-Message-ID-Hash: H45CLY7WQP524I6UVBJYALT224O2PSIM
X-MailFrom: torvalds@linuxfoundation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Kees Cook <keescook@chromium.org>, Jens Axboe <axboe@kernel.dk>, Bui Quang Minh <minhquangbui99@gmail.com>, Christian Brauner <brauner@kernel.org>, syzbot <syzbot+045b454ab35fd82a35fb@syzkaller.appspotmail.com>, io-uring@vger.kernel.org, jack@suse.cz, linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org, syzkaller-bugs@googlegroups.com, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Laura Abbott <laura@labbott.name>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: get_file() unsafe under epoll (was Re: [syzbot] [fs?] [io-uring?] general protection fault in __ep_remove)
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/H45CLY7WQP524I6UVBJYALT224O2PSIM/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Fri, 3 May 2024 at 14:11, Al Viro <viro@zeniv.linux.org.uk> wrote:
>
> What we need is
>         * promise that ep_item_poll() won't happen after eventpoll_release_file().
> AFAICS, we do have that.
>         * ->poll() not playing silly buggers.

No. That is not enough at all.

Because even with perfectly normal "->poll()", and even with the
ep_item_poll() happening *before* eventpoll_release_file(), you have
this trivial race:

  ep_item_poll()
     ->poll()

and *between* those two operations, another CPU does "close()", and
that causes eventpoll_release_file() to be called, and now f_count
goes down to zero while ->poll() is running.

So you do need to increment the file count around the ->poll() call, I feel.

Or, alternatively, you'd need to serialize with
eventpoll_release_file(), but that would need to be some sleeping lock
held over the ->poll() call.

> As it is, dma_buf ->poll() is very suspicious regardless of that
> mess - it can grab reference to file for unspecified interval.

I think that's actually much preferable to what epoll does, which is
to keep using files without having reference counts to them (and then
relying on magically not racing with eventpoll_release_file().

                Linus
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
