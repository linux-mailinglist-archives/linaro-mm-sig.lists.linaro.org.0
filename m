Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 440BD8BBD97
	for <lists+linaro-mm-sig@lfdr.de>; Sat,  4 May 2024 20:20:52 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 26FE83F06F
	for <lists+linaro-mm-sig@lfdr.de>; Sat,  4 May 2024 18:20:51 +0000 (UTC)
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	by lists.linaro.org (Postfix) with ESMTPS id E658C3F06F
	for <linaro-mm-sig@lists.linaro.org>; Sat,  4 May 2024 18:20:39 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linux-foundation.org header.s=google header.b=RlEYczlO;
	spf=pass (lists.linaro.org: domain of torvalds@linuxfoundation.org designates 209.85.218.51 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org;
	dmarc=none
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-a59a0e4b773so145007466b.2
        for <linaro-mm-sig@lists.linaro.org>; Sat, 04 May 2024 11:20:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linux-foundation.org; s=google; t=1714846839; x=1715451639; darn=lists.linaro.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=TbTAb0O3vIVxVEVAX+Kz3ISBhu7sYKvIouph0u6S16I=;
        b=RlEYczlO4ePEO1whOqmTASgJtkmIf9O1cg3vwowwDov4TuDiuta1OY5ENtc38/7tB9
         VgXolgsSIMl9SfJVwTRRHQRvkdvSAHLvRa2T5kGET5/qs4bewyiXvtqpjn09zNODG3Lq
         V0RYvC+AkZyJ1Se3az7KxVDWPEAU32e9pU7O8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714846839; x=1715451639;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TbTAb0O3vIVxVEVAX+Kz3ISBhu7sYKvIouph0u6S16I=;
        b=AK8vZ+L2j9hA1ymE+eUq/3EIp0oPF/YTduj1n+WLVh0FpnX7BPYsCqLB5ulIYbT+W7
         sCqkZ9w8LMq1NRNECrQrm3J5QoAYTHbjV//f6kHr76FQww3sAQL36W13Vc55GXgMyYVl
         Amu/HwT/sYh1/oFyJLTOmVqoo8Cf6RIDHdsZqFQ4MY244D89deiOAh8JB6W3858GRfEw
         5p220/vxHaubaP4fmm5yfeWlHNwOeL5ybmSDGP4yNZFyzNVdjjFaNnGMfGZyO2Pv65yl
         pazROxz/yvIGnotvtltqbq55NqkRumqmmDd+v6AihrtKe1j6hCqSeQJnKonAbXLXnfCY
         jwmA==
X-Forwarded-Encrypted: i=1; AJvYcCUOC7BRqpAVtjS5Ld6G3yNLAGqizngD4WTWZQYaZ9+3u2C0U58JifHsIfwG4e9z7p9YV3P1/OTA+fEeVAVMMQULFMWddQLYtEKbU4FFI2Q=
X-Gm-Message-State: AOJu0YzG9F5aLRgEEYOJlRoIghbudODehD4yPlp8EwMEeOA1DQIKY3he
	uEcuvlvPnfuV9omAIj1RJknZyyF6/u2C+DgmaePvj3cZTphb2T8mDPMrEI6pz9oYeQPwtculqmv
	KFyqfQg==
X-Google-Smtp-Source: AGHT+IEqHNL8Aw5MXoaoODZuASh/0S1X071rPwzCHELVHKHXDWE8KW7X0n429q0vD0QGA2PGnbj3pg==
X-Received: by 2002:a17:906:80d4:b0:a52:5925:2a31 with SMTP id a20-20020a17090680d400b00a5259252a31mr3574040ejx.29.1714846838923;
        Sat, 04 May 2024 11:20:38 -0700 (PDT)
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com. [209.85.218.45])
        by smtp.gmail.com with ESMTPSA id d9-20020a170906344900b00a58df78ab27sm3140793ejb.166.2024.05.04.11.20.38
        for <linaro-mm-sig@lists.linaro.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 04 May 2024 11:20:38 -0700 (PDT)
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-a59a17fcc6bso139020566b.1
        for <linaro-mm-sig@lists.linaro.org>; Sat, 04 May 2024 11:20:38 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVPXZRz0v0f9MITU1JnH1ErJF5MsEdq6Nam0DDnDw4WwhEg6t4O1n55OE0RoAF0NES3iNq0p/hp3rsJzXvQ36ls6HxxkXUeekOQ1HfLa1k=
X-Received: by 2002:a17:906:e90:b0:a52:1e53:febf with SMTP id
 p16-20020a1709060e9000b00a521e53febfmr3945377ejf.69.1714846838331; Sat, 04
 May 2024 11:20:38 -0700 (PDT)
MIME-Version: 1.0
References: <202405031110.6F47982593@keescook> <20240503211129.679762-2-torvalds@linux-foundation.org>
 <20240503212428.GY2118490@ZenIV> <CAHk-=wjpsTEkHgo1uev3xGJ2bQXYShaRf3GPEqDWNgUuKx0JFw@mail.gmail.com>
 <20240504-wohngebiet-restwert-6c3c94fddbdd@brauner> <CAHk-=wj_Fu1FkMFrjivQ=MGkwkKXZBuh0f4BEhcZHD5WCvHesw@mail.gmail.com>
In-Reply-To: <CAHk-=wj_Fu1FkMFrjivQ=MGkwkKXZBuh0f4BEhcZHD5WCvHesw@mail.gmail.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Sat, 4 May 2024 11:20:22 -0700
X-Gmail-Original-Message-ID: <CAHk-=wj6XL9MGCd_nUzRj6SaKeN0TsyTTZDFpGdW34R+zMZaSg@mail.gmail.com>
Message-ID: <CAHk-=wj6XL9MGCd_nUzRj6SaKeN0TsyTTZDFpGdW34R+zMZaSg@mail.gmail.com>
To: Christian Brauner <brauner@kernel.org>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: E658C3F06F
X-Spamd-Bar: -
X-Spamd-Result: default: False [-1.80 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	FORGED_SENDER(0.30)[torvalds@linux-foundation.org,torvalds@linuxfoundation.org];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[linux-foundation.org:s=google];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.218.51:from];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	ARC_NA(0.00)[];
	DMARC_NA(0.00)[linux-foundation.org];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[zeniv.linux.org.uk,chromium.org,kernel.dk,amd.com,lists.freedesktop.org,vger.kernel.org,suse.cz,labbott.name,lists.linaro.org,gmail.com,linaro.org,syzkaller.appspotmail.com,googlegroups.com];
	DKIM_TRACE(0.00)[linux-foundation.org:+];
	MISSING_XM_UA(0.00)[];
	DNSWL_BLOCKED(0.00)[209.85.218.45:received,209.85.218.51:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[torvalds@linux-foundation.org,torvalds@linuxfoundation.org];
	RCPT_COUNT_TWELVE(0.00)[17];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TAGGED_RCPT(0.00)[045b454ab35fd82a35fb];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
Message-ID-Hash: CKSGKRNFCMZGY3DJF6CK5DMV4PEDD5UF
X-Message-ID-Hash: CKSGKRNFCMZGY3DJF6CK5DMV4PEDD5UF
X-MailFrom: torvalds@linuxfoundation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Al Viro <viro@zeniv.linux.org.uk>, keescook@chromium.org, axboe@kernel.dk, christian.koenig@amd.com, dri-devel@lists.freedesktop.org, io-uring@vger.kernel.org, jack@suse.cz, laura@labbott.name, linaro-mm-sig@lists.linaro.org, linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, minhquangbui99@gmail.com, sumit.semwal@linaro.org, syzbot+045b454ab35fd82a35fb@syzkaller.appspotmail.com, syzkaller-bugs@googlegroups.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] epoll: try to be a _bit_ better about file lifetimes
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/CKSGKRNFCMZGY3DJF6CK5DMV4PEDD5UF/>
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
> Lookie here, the fundamental issue is that epoll can call '->poll()'
> on a file descriptor that is being closed concurrently.

Thinking some more about this, and replying to myself...

Actually, I wonder if we could *really* fix this by simply moving the
eventpoll_release() to where it really belongs.

If we did it in file_close_fd_locked(),  it would actually make a
*lot* more sense. Particularly since eventpoll actually uses this:

    struct epoll_filefd {
        struct file *file;
        int fd;
    } __packed;

ie it doesn't just use the 'struct file *', it uses the 'fd' itself
(for ep_find()).

(Strictly speaking, it should also have a pointer to the 'struct
files_struct' to make the 'int fd' be meaningful).

IOW, eventpoll already considers the file _descriptor_ relevant, not
just the file pointer, and that's destroyed at *close* time, not at
'fput()' time.

Yeah, yeah, the locking situation in file_close_fd_locked() is a bit
inconvenient, but if we can solve that, it would solve the problem in
a fundamentally different way: remove the ep iterm before the
file->f_count has actually been decremented, so the whole "race with
fput()" would just go away entirely.

I dunno. I think that would be the right thing to do, but I wouldn't
be surprised if some disgusting eventpoll user then might depend on
the current situation where the eventpoll thing stays around even
after the close() if you have another copy of the file open.

             Linus
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
