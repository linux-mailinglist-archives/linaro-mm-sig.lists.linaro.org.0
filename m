Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id E688D8BEABD
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  7 May 2024 19:45:18 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DF8CE44123
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  7 May 2024 17:45:17 +0000 (UTC)
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	by lists.linaro.org (Postfix) with ESMTPS id 6974E3EC0D
	for <linaro-mm-sig@lists.linaro.org>; Tue,  7 May 2024 17:45:06 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=mHNkVPQ9;
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.128.48 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-41c7ac71996so27907975e9.3
        for <linaro-mm-sig@lists.linaro.org>; Tue, 07 May 2024 10:45:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1715103905; x=1715708705; darn=lists.linaro.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Z39aNp6ho/cansGz6z4As7qPLlCotOLLvlN9d9rLPQI=;
        b=mHNkVPQ9mG+c+6Q1vssE5yTZ7VotUA9RpZ8PoiBrpyg/IGR9xbH7PjaNR55x1Mx/gF
         NL1PMaqcBkyYll8CTRVv13TOx2/wuBsK5DHD6XCyEScjOzaiyFFSRjen85KqlJ9wesYN
         8WtQKa1XUw1hBAjhM2VXiNkqM5pDl6JdbTPj6JFsRbxTVoeOghQj4qhGC+EKsrECzQvS
         0t4xLMde4BdShKcsScqzK7liZ2L9mN+5kcaga6S63TylJ5in1bxy6NQhZWYZJZGxnlbi
         jJBfl2Vzk9RgUetwKW5Guw7iqGGDwCMV39D4z9Me98c0JQaAShHO68R/ITroc8DA2zWd
         Z1rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715103905; x=1715708705;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Z39aNp6ho/cansGz6z4As7qPLlCotOLLvlN9d9rLPQI=;
        b=cIB7nvVn0yJ1khPi3aZNpT6bMT2j4wRghmYOqsO3hoq0dk7J6rgUqjcvFxIf3ZYk1B
         GyS53fysggV6IHe5ceBI6WShCFLUDazEMsD89DmobTkgkE7U9Do7xeL6dYhyPXRXtzQ5
         iBcgb24tlg8dR/ubY7mv5ZwFPb/tFotK2TWyyFm479MrX7UjOzrL1IIXZlvDDXWjhUOF
         66lh/y0bmP9gREi45oUF02Woowg20j9ybBcB+2o7rjaEG+10s9mfPQiUp6h36iIyNhXw
         w1cnQNOD294XiOw8R0OQxcWGApYqqN/SrkHSDKjE2ozGsTSO/Zr/u4JqviYJwb64rCmE
         Yymw==
X-Forwarded-Encrypted: i=1; AJvYcCV+s/SNRP3vNh7EIWIogqklQDMSvxPLt2Mm1ev3nZwD1cu8tSX5/sYZ95fzYD+mwmf04NIIwRblqPEgK3fewT6OPX1/p+wZ8bh9PAskZFk=
X-Gm-Message-State: AOJu0YyXjJlpAR90eKBk6+aig0K3ppq1BXQ0KIq3/E9jCSiZ3deW0pZ1
	HNqjBAtx8B0Lw2FV03AuqwLoOS2r6w6hNoVASVmSgS8uv/1qJIWA
X-Google-Smtp-Source: AGHT+IEeIO2faXt4HPtaKPSv53LPLgfetsgWUZ2rrUB+vNo+nARJS5K74POuW8sS151Q2FCZsZtlxw==
X-Received: by 2002:a05:600c:458d:b0:41c:503:9a01 with SMTP id 5b1f17b1804b1-41f71ecb256mr3191275e9.25.1715103905216;
        Tue, 07 May 2024 10:45:05 -0700 (PDT)
Received: from [10.254.108.81] (munvpn.amd.com. [165.204.72.6])
        by smtp.gmail.com with ESMTPSA id l8-20020a05600c4f0800b0041bfa349cadsm23910612wmq.16.2024.05.07.10.45.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 May 2024 10:45:04 -0700 (PDT)
Message-ID: <d68417df-1493-421a-8558-879abe36d6fa@gmail.com>
Date: Tue, 7 May 2024 19:45:02 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Linus Torvalds <torvalds@linux-foundation.org>,
 Christian Brauner <brauner@kernel.org>, Al Viro <viro@zeniv.linux.org.uk>,
 keescook@chromium.org, axboe@kernel.dk, christian.koenig@amd.com,
 dri-devel@lists.freedesktop.org, io-uring@vger.kernel.org, jack@suse.cz,
 laura@labbott.name, linaro-mm-sig@lists.linaro.org,
 linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org, minhquangbui99@gmail.com,
 sumit.semwal@linaro.org,
 syzbot+045b454ab35fd82a35fb@syzkaller.appspotmail.com,
 syzkaller-bugs@googlegroups.com
References: <202405031110.6F47982593@keescook>
 <20240503211129.679762-2-torvalds@linux-foundation.org>
 <20240503212428.GY2118490@ZenIV>
 <CAHk-=wjpsTEkHgo1uev3xGJ2bQXYShaRf3GPEqDWNgUuKx0JFw@mail.gmail.com>
 <20240504-wohngebiet-restwert-6c3c94fddbdd@brauner>
 <CAHk-=wj_Fu1FkMFrjivQ=MGkwkKXZBuh0f4BEhcZHD5WCvHesw@mail.gmail.com>
 <CAHk-=wj6XL9MGCd_nUzRj6SaKeN0TsyTTZDFpGdW34R+zMZaSg@mail.gmail.com>
 <b1728d20-047c-4e28-8458-bf3206a1c97c@gmail.com>
 <ZjoKX4nmrRdevyxm@phenom.ffwll.local>
 <CAHk-=wgh5S-7sCCqXBxGcXHZDhe4U8cuaXpVTjtXLej2si2f3g@mail.gmail.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>
In-Reply-To: <CAHk-=wgh5S-7sCCqXBxGcXHZDhe4U8cuaXpVTjtXLej2si2f3g@mail.gmail.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 6974E3EC0D
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.49 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	XM_UA_NO_VERSION(0.01)[];
	TAGGED_FROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	FREEMAIL_TO(0.00)[linux-foundation.org,kernel.org,zeniv.linux.org.uk,chromium.org,kernel.dk,amd.com,lists.freedesktop.org,vger.kernel.org,suse.cz,labbott.name,lists.linaro.org,gmail.com,linaro.org,syzkaller.appspotmail.com,googlegroups.com];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	DNSWL_BLOCKED(0.00)[165.204.72.6:received];
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
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.48:from];
	RCVD_IN_DNSWL_NONE(0.00)[209.85.128.48:from]
X-Rspamd-Action: no action
Message-ID-Hash: LG4GNFXZURTJP7CGSUVJHACYOZERLPM4
X-Message-ID-Hash: LG4GNFXZURTJP7CGSUVJHACYOZERLPM4
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] epoll: try to be a _bit_ better about file lifetimes
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/LG4GNFXZURTJP7CGSUVJHACYOZERLPM4/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

Am 07.05.24 um 18:46 schrieb Linus Torvalds:
> On Tue, 7 May 2024 at 04:03, Daniel Vetter <daniel@ffwll.ch> wrote:
>> It's really annoying that on some distros/builds we don't have that, and
>> for gpu driver stack reasons we _really_ need to know whether a fd is the
>> same as another, due to some messy uniqueness requirements on buffer
>> objects various drivers have.
> It's sad that such a simple thing would require two other horrid
> models (EPOLL or KCMP).
>
> There'[s a reason that KCMP is a config option - *some* of that is
> horrible code - but the "compare file descriptors for equality" is not
> that reason.
>
> Note that KCMP really is a broken mess. It's also a potential security
> hole, even for the simple things, because of how it ends up comparing
> kernel pointers (ie it doesn't just say "same file descriptor", it
> gives an ordering of them, so you can use KCMP to sort things in
> kernel space).
>
> And yes, it orders them after obfuscating the pointer, but it's still
> not something I would consider sane as a baseline interface. It was
> designed for checkpoint-restore, it's the wrong thing to use for some
> "are these file descriptors the same".
>
> The same argument goes for using EPOLL for that. Disgusting hack.
>
> Just what are the requirements for the GPU stack? Is one of the file
> descriptors "trusted", IOW, you know what kind it is?
>
> Because dammit, it's *so* easy to do. You could just add a core DRM
> ioctl for it. Literally just
>
>          struct fd f1 = fdget(fd1);
>          struct fd f2 = fdget(fd2);
>          int same;
>
>          same = f1.file && f1.file == f2.file;
>          fdput(fd1);
>          fdput(fd2);
>          return same;
>
> where the only question is if you also woudl want to deal with O_PATH
> fd's, in which case the "fdget()" would be "fdget_raw()".
>
> Honestly, adding some DRM ioctl for this sounds hacky, but it sounds
> less hacky than relying on EPOLL or KCMP.
>
> I'd be perfectly ok with adding a generic "FISAME" VFS level ioctl
> too, if this is possibly a more common thing. and not just DRM wants
> it.
>
> Would something like that work for you?

Well the generic approach yes, the DRM specific one maybe. IIRC we need 
to be able to compare both DRM as well as DMA-buf file descriptors.

The basic problem userspace tries to solve is that drivers might get the 
same fd through two different code paths.

For example application using OpenGL/Vulkan for rendering and VA-API for 
video decoding/encoding at the same time.

Both APIs get a fd which identifies the device to use. It can be the 
same, but it doesn't have to.

If it's the same device driver connection (or in kernel speak underlying 
struct file) then you can optimize away importing and exporting of 
buffers for example.

Additional to that it makes cgroup accounting much easier because you 
don't count things twice because they are shared etc...

Regards,
Christian.

>
>                   Linus

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
