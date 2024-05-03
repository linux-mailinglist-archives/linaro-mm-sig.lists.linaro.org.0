Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 939F68BB66F
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  3 May 2024 23:53:15 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9ADE144810
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  3 May 2024 21:53:14 +0000 (UTC)
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	by lists.linaro.org (Postfix) with ESMTPS id 0117A40C4C
	for <linaro-mm-sig@lists.linaro.org>; Fri,  3 May 2024 21:52:58 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linux-foundation.org header.s=google header.b=fvQDgCyp;
	spf=pass (lists.linaro.org: domain of torvalds@linuxfoundation.org designates 209.85.218.49 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org;
	dmarc=none
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-a519e1b0e2dso17144866b.2
        for <linaro-mm-sig@lists.linaro.org>; Fri, 03 May 2024 14:52:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linux-foundation.org; s=google; t=1714773177; x=1715377977; darn=lists.linaro.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=A7KwjGqB6cN3Dl955k2+YGPiXLoEdjHxOLmUV0m+ZBo=;
        b=fvQDgCypaGEGqs7t69C+ND1jOZxorjYF+DOzh3r4lxgh6Llxr9Oh8ZZtieaodqzCQZ
         KKK9jEdF9ED1vebBtMuzDgxw1fpla6ZSfd0bvdsNBhVdzWGEYbFTi9j4eKtdVrlCUBfc
         GLf5ldmDtNbgH1on+7VYXXCl9bC1vWeabKATA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714773177; x=1715377977;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=A7KwjGqB6cN3Dl955k2+YGPiXLoEdjHxOLmUV0m+ZBo=;
        b=PKIBApLsrGFUNrW1KTSWg2/acq10PsRK1Ce5vPX8rvE95LjAiP7DM4D6i9KPYFV9GU
         Hk+/zXIfYzNWC1fevir1o+icAy9enLunwh2RQv+u0UnpyvMLmlZbgBLFPEial6/Z2BGg
         1FeUtL5OpMJUkq1t7h2TQ/J3KVosGbUrJqdi8m6+y7H/Hd/ZFb+OB+u4PucaHmy790Rr
         G4x8+KiAouS0UTBi+cRVMf0+xzU+0CZ/siy40UsYArGRIImigpobijySSsrTOt7/Pw9Y
         H9iUVcSUieUaGx5NQrhlwcQ5OMJfwiMCRts4VjWfAsPk0QxJ/yKo3oXggd91+uleJXbr
         OdLw==
X-Forwarded-Encrypted: i=1; AJvYcCVMBRaASHmzQCmo/4KXVXCkKdt7+MILxbhlT9zNEjR+wvm1UV0bY4/XlxYQa2imCNRRwyD/A6Gb6OWN++U/WC9NBk2apcRF97uNAkPWglY=
X-Gm-Message-State: AOJu0Yy3QF0ZaJzYUuWZmndwkPdpn03VV54NG/mOmxUmIr75nX9ayt07
	eoiwWKjjbIHQMmUW4ZBqHVCLPXSgps4ZE42Z2URzptCDrHR7rQEOkgb44aiTegrUqVPXKvX8Z/X
	q3v/kFw==
X-Google-Smtp-Source: AGHT+IFBvdHhDjEc63f2ZRLAEpys3dqHI/UIYAp6d7/8+FkgO6PyN+/w5qxVDxUHNDlnTqAmN9Dd1w==
X-Received: by 2002:a17:907:4d8:b0:a59:9eab:162d with SMTP id vz24-20020a17090704d800b00a599eab162dmr1030790ejb.33.1714773176887;
        Fri, 03 May 2024 14:52:56 -0700 (PDT)
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com. [209.85.218.52])
        by smtp.gmail.com with ESMTPSA id lc5-20020a170906f90500b00a599c783c04sm678247ejb.20.2024.05.03.14.52.55
        for <linaro-mm-sig@lists.linaro.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 03 May 2024 14:52:55 -0700 (PDT)
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-a519e1b0e2dso17140666b.2
        for <linaro-mm-sig@lists.linaro.org>; Fri, 03 May 2024 14:52:55 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXxLfE+mc0wYUmkyh8kE9oXR5zVKns+FOswrXXwHUl73mb+Ph9Awn9zlOXdQZhyx9ZE65yMM0y5BD/8TO9qz5Kg58l+59p0x3SCKGjaGQ8=
X-Received: by 2002:a17:906:eca8:b0:a58:c639:9518 with SMTP id
 qh8-20020a170906eca800b00a58c6399518mr2622517ejb.76.1714773175036; Fri, 03
 May 2024 14:52:55 -0700 (PDT)
MIME-Version: 1.0
References: <202405031110.6F47982593@keescook> <20240503211129.679762-2-torvalds@linux-foundation.org>
 <20240503212428.GY2118490@ZenIV> <CAHk-=wjpsTEkHgo1uev3xGJ2bQXYShaRf3GPEqDWNgUuKx0JFw@mail.gmail.com>
 <20240503214531.GB2118490@ZenIV>
In-Reply-To: <20240503214531.GB2118490@ZenIV>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Fri, 3 May 2024 14:52:38 -0700
X-Gmail-Original-Message-ID: <CAHk-=wgC+QpveKCJpeqsaORu7htoNNKA8mp+d9mvJEXmSKjhbw@mail.gmail.com>
Message-ID: <CAHk-=wgC+QpveKCJpeqsaORu7htoNNKA8mp+d9mvJEXmSKjhbw@mail.gmail.com>
To: Al Viro <viro@zeniv.linux.org.uk>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 0117A40C4C
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-5.75 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-2.95)[99.77%];
	SUSPICIOUS_RECIPS(1.50)[];
	FORGED_SENDER(0.30)[torvalds@linux-foundation.org,torvalds@linuxfoundation.org];
	R_DKIM_ALLOW(-0.20)[linux-foundation.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.218.49:from];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[linux-foundation.org];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[chromium.org,kernel.dk,kernel.org,amd.com,lists.freedesktop.org,vger.kernel.org,suse.cz,labbott.name,lists.linaro.org,gmail.com,linaro.org,syzkaller.appspotmail.com,googlegroups.com];
	DKIM_TRACE(0.00)[linux-foundation.org:+];
	DNSWL_BLOCKED(0.00)[209.85.218.52:received,209.85.218.49:from];
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
Message-ID-Hash: GUBPETKBQVL2DHQ6FG5V7JXPVHADDTIJ
X-Message-ID-Hash: GUBPETKBQVL2DHQ6FG5V7JXPVHADDTIJ
X-MailFrom: torvalds@linuxfoundation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: keescook@chromium.org, axboe@kernel.dk, brauner@kernel.org, christian.koenig@amd.com, dri-devel@lists.freedesktop.org, io-uring@vger.kernel.org, jack@suse.cz, laura@labbott.name, linaro-mm-sig@lists.linaro.org, linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, minhquangbui99@gmail.com, sumit.semwal@linaro.org, syzbot+045b454ab35fd82a35fb@syzkaller.appspotmail.com, syzkaller-bugs@googlegroups.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] epoll: try to be a _bit_ better about file lifetimes
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/GUBPETKBQVL2DHQ6FG5V7JXPVHADDTIJ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Fri, 3 May 2024 at 14:45, Al Viro <viro@zeniv.linux.org.uk> wrote:
>
> How do you get through eventpoll_release_file() while someone
> has entered ep_item_poll()?

Doesn't matter.

Look, it's enough that the file count has gone down to zero. You may
not even have gotten to eventpoll_release_file() yet - the important
part is that you're on your *way* to it.

That means that the file will be released - and it means that you have
violated all the refcounting rules for poll().

So I think you're barking up the wrong tree.

                  Linus
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
