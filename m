Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C40D8BD476
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  6 May 2024 20:18:21 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 718C344391
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  6 May 2024 18:18:20 +0000 (UTC)
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	by lists.linaro.org (Postfix) with ESMTPS id 3284C40B93
	for <linaro-mm-sig@lists.linaro.org>; Mon,  6 May 2024 18:18:09 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linux-foundation.org header.s=google header.b=BxERbEQR;
	spf=pass (lists.linaro.org: domain of torvalds@linuxfoundation.org designates 209.85.208.50 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org;
	dmarc=none
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-572adaa172cso3878612a12.1
        for <linaro-mm-sig@lists.linaro.org>; Mon, 06 May 2024 11:18:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linux-foundation.org; s=google; t=1715019488; x=1715624288; darn=lists.linaro.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=6q7UkdOxzhbeF8E3EB8/oVmwWLDDbJfhhsW1gzY2H6M=;
        b=BxERbEQRcXkx4+HvYufJrfbxmTWmrEsovRxfHt5su9hWTzOhbPwOBol/FmdPvEjoK6
         7L30WdbNxir4iqveA6xVlRiU6K12unecKVRhjNn3mdzso97ESFX/tPwvdJbqeI/VtY8J
         BMnrotEdUdpn2Au9S5OeuwKPMod4wrSK6beW0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715019488; x=1715624288;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6q7UkdOxzhbeF8E3EB8/oVmwWLDDbJfhhsW1gzY2H6M=;
        b=dtM5Zmg6dVNBmvMYkHmybgXq0nMzaeD6VxxBZ6E9jnvAQNCmQRUe3kJ0x3FsvMjv97
         blDEDKqvU4PLewf1pVEzBv7L5joqO6bUkW9N0OtOjX7VfL0qL+OfYZHq9h816kWEsAjC
         tBq3eK3QUzemi7e4NQdSRW3FkuH8STuJBSXwqwP2L6Eel8Y51ZBjiTcNS83Hchl3aduc
         aY1aQdPbgGERg7tA4I1NEI9VhGq9ATxp9NbAiwr/xfMCan94bw1B64+00kQGO5G1fzQs
         vOvLEQNxgYToeR9jgRBiHnI1CaXlXiVv2LRGOt8gP8baf6yc3SqA431wXXY0kwI0KWiX
         mTkw==
X-Forwarded-Encrypted: i=1; AJvYcCU/HJaavXuQm62cxVkJMacNv9QB90cHQBMlB7scYBZHggJ13A/awuP8HSbqdppwUAXGkZGWz1gaj6wGwLohByV4X5WJr4jO8zATPovLicE=
X-Gm-Message-State: AOJu0YwK1TRcr3P9X3x+uJn2BC4STO+coVwlzdqsvLT9F6fu0Vec71Yc
	2CbeNHX70fWtzKmrlPyZQFGFj3Ton4nhQiFwveRFMVRdEnuUwPFV4d36NtE3rGyoE13T4m/XsLg
	jARyRlQ==
X-Google-Smtp-Source: AGHT+IGm4LVnMfZuIzOq+iCP/UhYgVykCmRAbhvU6S8XO5/KovV3tIHP2xd/H5u4w2Z4KQZIzICZ9A==
X-Received: by 2002:a05:6402:650:b0:572:7d77:179d with SMTP id 4fb4d7f45d1cf-57311023505mr334507a12.5.1715019488094;
        Mon, 06 May 2024 11:18:08 -0700 (PDT)
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com. [209.85.218.47])
        by smtp.gmail.com with ESMTPSA id r1-20020a50d681000000b0057297f5935dsm5692624edi.57.2024.05.06.11.18.07
        for <linaro-mm-sig@lists.linaro.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 May 2024 11:18:07 -0700 (PDT)
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-a59ce1e8609so195297766b.0
        for <linaro-mm-sig@lists.linaro.org>; Mon, 06 May 2024 11:18:07 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUpjF2erWa1klEJixR3Ht9floRH8rwFuGMre5Pd1jKKWCHtJulQ8KE0xK9a26gmncjiDwFqKadsAUUYIN2m++IX81jprReWgbUoHL6bR1A=
X-Received: by 2002:a17:906:e49:b0:a59:91a0:df46 with SMTP id
 a640c23a62f3a-a59e4e862d2mr29381966b.31.1715019487019; Mon, 06 May 2024
 11:18:07 -0700 (PDT)
MIME-Version: 1.0
References: <0000000000002d631f0615918f1e@google.com> <7c41cf3c-2a71-4dbb-8f34-0337890906fc@gmail.com>
 <202405031110.6F47982593@keescook> <64b51cc5-9f5b-4160-83f2-6d62175418a2@kernel.dk>
 <202405031207.9D62DA4973@keescook> <d6285f19-01aa-49c8-8fef-4b5842136215@kernel.dk>
 <202405031237.B6B8379@keescook> <202405031325.B8979870B@keescook>
 <20240503211109.GX2118490@ZenIV> <CAHk-=wj0de-P2Q=Gz2uyrWBHagT25arLbN0Lyg=U6fT7psKnQA@mail.gmail.com>
 <501ead34-d79f-442e-9b9a-ecd694b3015c@samba.org>
In-Reply-To: <501ead34-d79f-442e-9b9a-ecd694b3015c@samba.org>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Mon, 6 May 2024 11:17:50 -0700
X-Gmail-Original-Message-ID: <CAHk-=whBVkwFryz5-DOAxNKYOy5RwPpQkZHQSs1Oe806Xo6yeg@mail.gmail.com>
Message-ID: <CAHk-=whBVkwFryz5-DOAxNKYOy5RwPpQkZHQSs1Oe806Xo6yeg@mail.gmail.com>
To: Stefan Metzmacher <metze@samba.org>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 3284C40B93
X-Spamd-Bar: -
X-Spamd-Result: default: False [-1.70 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	FORGED_SENDER(0.30)[torvalds@linux-foundation.org,torvalds@linuxfoundation.org];
	R_DKIM_ALLOW(-0.20)[linux-foundation.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	ARC_NA(0.00)[];
	DMARC_NA(0.00)[linux-foundation.org];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[zeniv.linux.org.uk,chromium.org,kernel.dk,gmail.com,kernel.org,syzkaller.appspotmail.com,vger.kernel.org,suse.cz,googlegroups.com,linaro.org,amd.com,lists.freedesktop.org,lists.linaro.org,labbott.name];
	DKIM_TRACE(0.00)[linux-foundation.org:+];
	MISSING_XM_UA(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[torvalds@linux-foundation.org,torvalds@linuxfoundation.org];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.208.50:from];
	TAGGED_RCPT(0.00)[045b454ab35fd82a35fb];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	SUBJECT_HAS_QUESTION(0.00)[]
X-Rspamd-Action: no action
Message-ID-Hash: YCRJJXAO5CDOYARZ6XPVD2M3LD6XV357
X-Message-ID-Hash: YCRJJXAO5CDOYARZ6XPVD2M3LD6XV357
X-MailFrom: torvalds@linuxfoundation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Al Viro <viro@zeniv.linux.org.uk>, Kees Cook <keescook@chromium.org>, Jens Axboe <axboe@kernel.dk>, Bui Quang Minh <minhquangbui99@gmail.com>, Christian Brauner <brauner@kernel.org>, syzbot <syzbot+045b454ab35fd82a35fb@syzkaller.appspotmail.com>, io-uring@vger.kernel.org, jack@suse.cz, linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org, syzkaller-bugs@googlegroups.com, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Laura Abbott <laura@labbott.name>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: get_file() unsafe under epoll (was Re: [syzbot] [fs?] [io-uring?] general protection fault in __ep_remove)
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/YCRJJXAO5CDOYARZ6XPVD2M3LD6XV357/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Mon, 6 May 2024 at 10:46, Stefan Metzmacher <metze@samba.org> wrote:
>
> I think it's a very important detail that epoll does not take
> real references. Otherwise an application level 'close()' on a socket
> would not trigger a tcp disconnect, when an fd is still registered with
> epoll.

Yes, exactly.

epoll() ends up actually wanting the lifetime of the ep item be the
lifetime of the file _descriptor_, not the lifetime of the file
itself.

We approximate that - badly - with epoll not taking a reference on the
file pointer, and then at final fput() it tears things down.

But that has two real issues, and one of them is that "oh, now epoll
has file pointers that are actually dead" that caused this thread.

The other issue is that "approximates" thing, where it means that
duplicating the file pointer (dup*() and fork() end unix socket file
sending etc) will not mean that the epoll ref is also out of sync with
the lifetime of the file descriptor.

That's why I suggested that "clean up epoll references at
file_close_fd() time instead:

  https://lore.kernel.org/all/CAHk-=wj6XL9MGCd_nUzRj6SaKeN0TsyTTZDFpGdW34R+zMZaSg@mail.gmail.com/

because it would actually really *fix* the lifetime issue of ep items.

In the process, it would make it possible to actually take a f_count
reference at EPOLL_CTL_ADD time, since now the lifetime of the EP
wouldn't be tied to the lifetime of the 'struct file *' pointer, it
would be properly tied to the lifetime of the actual file descriptor
that you are adding.

So it would be a huge conceptual cleanup too.

(Of course - at that point EPOLL_CTL_ADD still doesn't actually _need_
a reference to the file, since the file being open in itself is
already that reference - but the point here being that there would
*be* a reference that the epoll code would effectively have, and you'd
never be in the situation we were in where there would be stale "dead"
file pointers that just haven't gone through the cleanup yet).

But I'd rather not touch the epoll code more than I have to.

Which is why I applied the minimal patch for just "refcount over
vfs_poll()", and am just mentioning my suggestion in the hope that
some eager beaver would like to see how painful it would do to make
the bigger surgery...

                   Linus
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
