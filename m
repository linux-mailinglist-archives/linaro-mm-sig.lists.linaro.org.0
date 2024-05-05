Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 428688BC399
	for <lists+linaro-mm-sig@lfdr.de>; Sun,  5 May 2024 22:17:21 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5157D40D73
	for <lists+linaro-mm-sig@lfdr.de>; Sun,  5 May 2024 20:17:20 +0000 (UTC)
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	by lists.linaro.org (Postfix) with ESMTPS id 1E1B640D73
	for <linaro-mm-sig@lists.linaro.org>; Sun,  5 May 2024 20:17:10 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linux-foundation.org header.s=google header.b=JDwY5ZSb;
	spf=pass (lists.linaro.org: domain of torvalds@linuxfoundation.org designates 209.85.218.42 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org;
	dmarc=none
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-a4702457ccbso288930166b.3
        for <linaro-mm-sig@lists.linaro.org>; Sun, 05 May 2024 13:17:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linux-foundation.org; s=google; t=1714940229; x=1715545029; darn=lists.linaro.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=89jyKA3wApx9BQCfs5IiJWmwTiyjcjG5A1RQj5E06Fo=;
        b=JDwY5ZSbFp5I9N0XYWe1eWrsB+32vGyiK97F/GWc3LhOQAniiArRRs028SN/W8wuAd
         ZYwG/vHK3MOR4DEQXsUNNVpwTMp3SMMSDhOhbKShv0WRDbR3b/Dv63/B3PLtaWoIjRqy
         FF1wXNJU5JzeUATG9QwfGXJBu6FVB7q766rsk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714940229; x=1715545029;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=89jyKA3wApx9BQCfs5IiJWmwTiyjcjG5A1RQj5E06Fo=;
        b=am6Xr5hlJN4Bgkfa6abHkLZj3i+MqMs0q4NwrSbWEzC+d73V2JO7z48IczPVXtT6uK
         SJeYBfK3D1XLVujZEeUu2qnnUT+pe0cMmXAOUss7TTzIss9leSZTggUlI+sjinYHujPo
         Z+dABxORUBzGqg5Ck7fz7SZagbnBacmT8I5Q6POI3AaQNPW+7bC9kn6B8BWch9O67eIK
         ZqgBdyXTpzD3w9A8jAYv4LVbk+WveFzpqj6ckGikMLkjB/nufDjgpXYzdzji0sY5M87f
         3d+12JixfjH3HNWPIAW/3dwnKcVyHWbp8CsC5RRD8rfeaKyjphfNp5brpg0L4MWRbhKN
         J/Yw==
X-Forwarded-Encrypted: i=1; AJvYcCUMROHPJhW0BU9K8JlN2Y2ME0PP0FA6VW1bXz0EiY+FMvCs6jBAkoRep6XsZgLpifYekQWzSYqoRfHTr/Sbxk7/ZJFq+5qKYg8uTzeEgeo=
X-Gm-Message-State: AOJu0Yzv/1EdIV59/SMvvNZCp75Ry7hCDz0HXfo2NVZ58NUME/A8taRm
	DX+BfXp0oV5hBbY0nu8FgQiLu4FdwRhEoBpBpYub0K/rGoRnkFijQQJBPMBXE8+3gzbXPK9XSHg
	Qa0CVIw==
X-Google-Smtp-Source: AGHT+IFsBPBGEaO0fIMNRpbwXtTsXdoEEkqRsyKH8TNX5loqrCFeNxc1qa1k8p0JoMRpsm4wPC0jkA==
X-Received: by 2002:a50:9516:0:b0:572:4faf:ed67 with SMTP id u22-20020a509516000000b005724fafed67mr5069753eda.24.1714940228995;
        Sun, 05 May 2024 13:17:08 -0700 (PDT)
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com. [209.85.218.46])
        by smtp.gmail.com with ESMTPSA id fi24-20020a056402551800b005727dc26598sm4288441edb.13.2024.05.05.13.17.08
        for <linaro-mm-sig@lists.linaro.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 05 May 2024 13:17:08 -0700 (PDT)
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-a59c448b44aso115166966b.2
        for <linaro-mm-sig@lists.linaro.org>; Sun, 05 May 2024 13:17:08 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUZMhNvD8kXuempwduIEZJgUIHSAQkLh+yxxABZAgeL76z3c3NKTWqAYl3fjitcT2mL1mxu5aLd0g3b5BrMQ1I0iQO//ybCLXBjlGaCdmw=
X-Received: by 2002:a17:906:7188:b0:a59:cd18:92f5 with SMTP id
 h8-20020a170906718800b00a59cd1892f5mr599989ejk.11.1714940227970; Sun, 05 May
 2024 13:17:07 -0700 (PDT)
MIME-Version: 1.0
References: <CAHk-=wgMzzfPwKc=8yBdXwSkxoZMZroTCiLZTYESYD3BC_7rhQ@mail.gmail.com>
 <20240505175556.1213266-2-torvalds@linux-foundation.org> <12120faf79614fc1b9df272394a71550@AcuMS.aculab.com>
In-Reply-To: <12120faf79614fc1b9df272394a71550@AcuMS.aculab.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Sun, 5 May 2024 13:16:51 -0700
X-Gmail-Original-Message-ID: <CAHk-=whxLdB_P=nW1bmVKn1m2jdcZRgkMksfvA722toFpT554w@mail.gmail.com>
Message-ID: <CAHk-=whxLdB_P=nW1bmVKn1m2jdcZRgkMksfvA722toFpT554w@mail.gmail.com>
To: David Laight <David.Laight@aculab.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 1E1B640D73
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-5.41 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-2.61)[98.26%];
	SUSPICIOUS_RECIPS(1.50)[];
	FORGED_SENDER(0.30)[torvalds@linux-foundation.org,torvalds@linuxfoundation.org];
	R_DKIM_ALLOW(-0.20)[linux-foundation.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.218.42:from];
	RCVD_COUNT_THREE(0.00)[3];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	ARC_NA(0.00)[];
	DMARC_NA(0.00)[linux-foundation.org];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[kernel.dk,kernel.org,amd.com,lists.freedesktop.org,vger.kernel.org,suse.cz,chromium.org,labbott.name,lists.linaro.org,gmail.com,linaro.org,syzkaller.appspotmail.com,googlegroups.com,zeniv.linux.org.uk];
	DNSWL_BLOCKED(0.00)[209.85.218.46:received];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[torvalds@linux-foundation.org,torvalds@linuxfoundation.org];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[linux-foundation.org:+];
	TAGGED_RCPT(0.00)[045b454ab35fd82a35fb];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_IN_DNSWL_NONE(0.00)[209.85.218.42:from]
X-Rspamd-Action: no action
Message-ID-Hash: OD7V2CGVUMSPUS6NIZSNAEP2PURRQWT5
X-Message-ID-Hash: OD7V2CGVUMSPUS6NIZSNAEP2PURRQWT5
X-MailFrom: torvalds@linuxfoundation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "axboe@kernel.dk" <axboe@kernel.dk>, "brauner@kernel.org" <brauner@kernel.org>, "christian.koenig@amd.com" <christian.koenig@amd.com>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "io-uring@vger.kernel.org" <io-uring@vger.kernel.org>, "jack@suse.cz" <jack@suse.cz>, "keescook@chromium.org" <keescook@chromium.org>, "laura@labbott.name" <laura@labbott.name>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>, "linux-fsdevel@vger.kernel.org" <linux-fsdevel@vger.kernel.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, "minhquangbui99@gmail.com" <minhquangbui99@gmail.com>, "sumit.semwal@linaro.org" <sumit.semwal@linaro.org>, "syzbot+045b454ab35fd82a35fb@syzkaller.appspotmail.com" <syzbot+045b454ab35fd82a35fb@syzkaller.appspotmail.com>, "syzkaller-bugs@googlegroups.com" <syzkaller-bugs@googlegroups.com>, "viro@zeniv.linux.org.uk" <viro@zeniv.linux.org.uk>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2] epoll: be better about file lifetimes
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/OD7V2CGVUMSPUS6NIZSNAEP2PURRQWT5/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Sun, 5 May 2024 at 13:02, David Laight <David.Laight@aculab.com> wrote:
>
> How much is the extra pair of atomics going to hurt performance?
> IIRC a lot of work was done to (try to) make epoll lockless.

If this makes people walk away from epoll, that would be absolutely
*lovely*. Maybe they'd start using io_uring instead, which has had its
problems, but is a lot more capable in the end.

Yes, doing things right is likely more expensive than doing things
wrong. Bugs are cheap. That doesn't make buggy code better.

Epoll really isn't important enough to screw over the VFS subsystem over.

I did point out elsewhere how this could be fixed by epoll() removing
the ep items at a different point:

  https://lore.kernel.org/all/CAHk-=wj6XL9MGCd_nUzRj6SaKeN0TsyTTZDFpGdW34R+zMZaSg@mail.gmail.com/

so if somebody actually wants to fix up epoll properly, that would
probably be great.

In fact, that model would allow epoll() to just keep a proper refcount
as an fd is added to the poll events, and would probably fix a lot of
nastiness. Right now those ep items stay around for basically random
amounts of time.

But maybe there are other ways to fix it. I don't think we have an
actual eventpoll maintainer any more, but what I'm *not* willing to
happen is eventpoll messing up other parts of the kernel. It was
always a ugly performance hack, and was only acceptable as such. "ugly
hack" is ok. "buggy ugly hack" is not.

              Linus
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
