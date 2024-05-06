Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FE9E8BD04C
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  6 May 2024 16:29:59 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 92E9A44816
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  6 May 2024 14:29:58 +0000 (UTC)
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	by lists.linaro.org (Postfix) with ESMTPS id BE8A53EC0D
	for <linaro-mm-sig@lists.linaro.org>; Mon,  6 May 2024 14:29:48 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=Zn5Ygm9i;
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.128.42 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-41dc9f98e8dso24159855e9.1
        for <linaro-mm-sig@lists.linaro.org>; Mon, 06 May 2024 07:29:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1715005788; x=1715610588; darn=lists.linaro.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=P7R2UF48atqv/gEumi+l7V+7dd7ac8J8DMLbixRpr6s=;
        b=Zn5Ygm9iJlZcqUQ+TEPTdGAY6AseAtJeXpwKGoSkc4HGxNfqWMSfOmIRrB8wsAQp2F
         v5MoNNWptNQhPiTK1z07LzbmOqJnPyfKyeQpltSyJ9cOdsC9cat+Mh6CJTv90ETvGruq
         NVPHDF6tm4p05WhVNxFYH8YImZTDA45lwASormmsGvv5oZNuXMKsfNv4OVUyxzv/d+Tb
         A6V6DkHP0I2Ios9INlCIFnGyMP2Idr+YZWryEoUk9joONfRG7XC7MfJbAPHuWe+rF1D+
         dilz49YSEtf8dxQ/jKgc9ABMNW8SSVlQ1MZBta2XBr1dpAhEM2Bgvc1kd1q8gtIHNqi5
         A4Ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715005788; x=1715610588;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=P7R2UF48atqv/gEumi+l7V+7dd7ac8J8DMLbixRpr6s=;
        b=cGYDzTyk24g4zaf9SkWw4D0LSSqMDxN1U+cqT+sSPSy0jTZuSt2lr1ODhpg79Ubcrv
         So5LNXGv4wAz50QcgMEN29qAXzkjW0xBw6GYAqJ9abxIA+/B+E8aDdT0BeY0/uRyNvr4
         40FI4QPLioaGS7WPG2uvYV/CJY8UDDwfKNrBwq3QnaY/ireWu2YEktOcmE7iWCAjjdM0
         OnGINifWx5lLD4O6dc/ECQZkVYTtRgyy80gCiltIacNRkGfEqM3QXGUwbwdiORyGagD7
         8p7Ucn/F+mimd/wEAekGT6GgHsnbT28U+f4bPy7A16hwwKzk5Hn4JK1fjmOzGJ0JdM09
         nWLg==
X-Forwarded-Encrypted: i=1; AJvYcCXJnQGRwGBwxlFgwY0qFXaBmPEM67YiSrVwWOGzSESneNi43bBmVggpVT37zBVl4ELaovmzwJeqXqJnamB2V5P5avbc68nkZXndNyq0Ckk=
X-Gm-Message-State: AOJu0YyhkcEn22KyZ6QopFyqaw9fywkzBgu0b838hqxokUnW1/NeDNNS
	ONX/e6EDNlQPLqVgLRhiyzCURRet8JyCqDBh0SqPxGEvmy6GMd8D
X-Google-Smtp-Source: AGHT+IH+uilrYBzdDMiE5k3XA1ozo74RVRh9CEWscdREfkRqL3c1m4xxcjh8Y/GbZ1wlL8KfoUDDPg==
X-Received: by 2002:adf:efc9:0:b0:34c:e6ca:b844 with SMTP id i9-20020adfefc9000000b0034ce6cab844mr8581498wrp.10.1715005787486;
        Mon, 06 May 2024 07:29:47 -0700 (PDT)
Received: from [192.168.178.25] ([185.254.126.157])
        by smtp.gmail.com with ESMTPSA id dn2-20020a0560000c0200b0034e14d59f07sm10890219wrb.73.2024.05.06.07.29.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 May 2024 07:29:46 -0700 (PDT)
Message-ID: <b1728d20-047c-4e28-8458-bf3206a1c97c@gmail.com>
Date: Mon, 6 May 2024 16:29:44 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Linus Torvalds <torvalds@linux-foundation.org>,
 Christian Brauner <brauner@kernel.org>
References: <202405031110.6F47982593@keescook>
 <20240503211129.679762-2-torvalds@linux-foundation.org>
 <20240503212428.GY2118490@ZenIV>
 <CAHk-=wjpsTEkHgo1uev3xGJ2bQXYShaRf3GPEqDWNgUuKx0JFw@mail.gmail.com>
 <20240504-wohngebiet-restwert-6c3c94fddbdd@brauner>
 <CAHk-=wj_Fu1FkMFrjivQ=MGkwkKXZBuh0f4BEhcZHD5WCvHesw@mail.gmail.com>
 <CAHk-=wj6XL9MGCd_nUzRj6SaKeN0TsyTTZDFpGdW34R+zMZaSg@mail.gmail.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>
In-Reply-To: <CAHk-=wj6XL9MGCd_nUzRj6SaKeN0TsyTTZDFpGdW34R+zMZaSg@mail.gmail.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: BE8A53EC0D
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.49 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	XM_UA_NO_VERSION(0.01)[];
	TAGGED_FROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	URIBL_BLOCKED(0.00)[linux-foundation.org:email,linaro.org:email];
	TO_DN_SOME(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[zeniv.linux.org.uk,chromium.org,kernel.dk,amd.com,lists.freedesktop.org,vger.kernel.org,suse.cz,labbott.name,lists.linaro.org,gmail.com,linaro.org,syzkaller.appspotmail.com,googlegroups.com];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	DNSWL_BLOCKED(0.00)[185.254.126.157:received];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[045b454ab35fd82a35fb];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.42:from];
	RCVD_IN_DNSWL_NONE(0.00)[209.85.128.42:from]
X-Rspamd-Action: no action
Message-ID-Hash: KMCVZ7WFBUSLLJXHH4PTQDHHENKGBK3X
X-Message-ID-Hash: KMCVZ7WFBUSLLJXHH4PTQDHHENKGBK3X
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Al Viro <viro@zeniv.linux.org.uk>, keescook@chromium.org, axboe@kernel.dk, christian.koenig@amd.com, dri-devel@lists.freedesktop.org, io-uring@vger.kernel.org, jack@suse.cz, laura@labbott.name, linaro-mm-sig@lists.linaro.org, linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, minhquangbui99@gmail.com, sumit.semwal@linaro.org, syzbot+045b454ab35fd82a35fb@syzkaller.appspotmail.com, syzkaller-bugs@googlegroups.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] epoll: try to be a _bit_ better about file lifetimes
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/KMCVZ7WFBUSLLJXHH4PTQDHHENKGBK3X/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

Am 04.05.24 um 20:20 schrieb Linus Torvalds:
> On Sat, 4 May 2024 at 08:32, Linus Torvalds
> <torvalds@linux-foundation.org> wrote:
>> Lookie here, the fundamental issue is that epoll can call '->poll()'
>> on a file descriptor that is being closed concurrently.
> Thinking some more about this, and replying to myself...
>
> Actually, I wonder if we could *really* fix this by simply moving the
> eventpoll_release() to where it really belongs.
>
> If we did it in file_close_fd_locked(),  it would actually make a
> *lot* more sense. Particularly since eventpoll actually uses this:
>
>      struct epoll_filefd {
>          struct file *file;
>          int fd;
>      } __packed;
>
> ie it doesn't just use the 'struct file *', it uses the 'fd' itself
> (for ep_find()).
>
> (Strictly speaking, it should also have a pointer to the 'struct
> files_struct' to make the 'int fd' be meaningful).

While I completely agree on this I unfortunately have to ruin the idea.

Before we had KCMP some people relied on the strange behavior of 
eventpoll to compare struct files when the fd is the same.

I just recently suggested that solution to somebody at AMD as a 
workaround when KCMP is disabled because of security hardening and I'm 
pretty sure I've seen it somewhere else as well.

So when we change that it would break (undocumented?) UAPI behavior.

Regards,
Christian.

>
> IOW, eventpoll already considers the file _descriptor_ relevant, not
> just the file pointer, and that's destroyed at *close* time, not at
> 'fput()' time.
>
> Yeah, yeah, the locking situation in file_close_fd_locked() is a bit
> inconvenient, but if we can solve that, it would solve the problem in
> a fundamentally different way: remove the ep iterm before the
> file->f_count has actually been decremented, so the whole "race with
> fput()" would just go away entirely.
>
> I dunno. I think that would be the right thing to do, but I wouldn't
> be surprised if some disgusting eventpoll user then might depend on
> the current situation where the eventpoll thing stays around even
> after the close() if you have another copy of the file open.
>
>               Linus
> _______________________________________________
> Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
> To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
