Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id D4D938BF5C6
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  8 May 2024 07:55:22 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DD9583F38C
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  8 May 2024 05:55:21 +0000 (UTC)
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	by lists.linaro.org (Postfix) with ESMTPS id 933D23F02C
	for <linaro-mm-sig@lists.linaro.org>; Wed,  8 May 2024 05:55:11 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=i+AtTFJL;
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.221.49 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-34db6a299b8so2630372f8f.3
        for <linaro-mm-sig@lists.linaro.org>; Tue, 07 May 2024 22:55:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1715147710; x=1715752510; darn=lists.linaro.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2kECfVH61gVXoLyEKuVmIWZjf9iy/udsb4pKdELyNgI=;
        b=i+AtTFJLeG9g0Tm8LZy2KSwRKgL5lv1cbJ7OdQDAg8XGIMXzM1Fz94U2poxKoxTV+z
         XOZ285pG/gFcgD90lpXGrd1OHC/N1de/mcalSzqxJDIFGaXxiY84+3J7YDkejlzyOvFU
         psz5kKtfWn8cbRbBneAe9p459HcGD+VyxMQk+czqF6BaC4y8YbTS5tVsWop/EgXNeIK7
         540uRvlsAWGt1wVvTKOtaq69Rmb+bp+rT3RbQmv/1T6t213eem/0BmJfsUpI/LJaldca
         3x0m+ag+vRdJgX4M6SJjyLo3Agh4xhTMlibXWdepp0ontkM9UDuScNyiAxPiRf9zgoit
         hV5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715147710; x=1715752510;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2kECfVH61gVXoLyEKuVmIWZjf9iy/udsb4pKdELyNgI=;
        b=iLND32S5s6DvMS7/bATss3rL6IS9ppmsMCFLI8kPHpttt/Ou9xCNVRFHJrDC5jd/r5
         TyiEBZMUdKSgNM5czfkhY3adwZWtGwWNFqIBKJ9xddwlLp1F6sPZSdmHGfX/3CVH5EdB
         RXpl44tCENh06CGBZTUCGlm/Um79qRez+ns9ev6iEUUBC10uwx3av08zRF5RYh80jDmm
         GyhyWs3+NVJoW9S5woAedJ0zi0L6s6CNYgdKn7cJ+jkCBFMoACf8kUhF8v6eiKTMD8I9
         qcUc3/AXfMWWXe5fti+znmmUYWKY9zMxjzifk+tZqvit3tTVQz+fqgVWg0W+pchFdU8W
         hk7g==
X-Forwarded-Encrypted: i=1; AJvYcCVqPAAPj6bRi9zc8YwAy1Ic/Ldv43nnRjmvUlmg7ccDwrcnjMBcTVPXchzwbS/s0oOXuBGBZUtlZM/vgTdw8unb49dWYPHmZ8eAsdlPx0o=
X-Gm-Message-State: AOJu0YyaOXLRQUWd1/lEPWZzCNw6eeorFVAMRMQj0NIGMQlJ0tfhOi1P
	/WbhQQujYt3L99DvSu9zlC3G9DidoAo+LzoYz3SBJoNfXBf1Qt9R
X-Google-Smtp-Source: AGHT+IGmRYQwYE5GKCP4nHrkMb9CRMRKCaP4q6oTy76fGgGdxl/Be2mRpgRLYl8OhhNTkkldystArg==
X-Received: by 2002:adf:f0c8:0:b0:34e:3cb3:6085 with SMTP id ffacd0b85a97d-34fca81043amr1370408f8f.62.1715147710492;
        Tue, 07 May 2024 22:55:10 -0700 (PDT)
Received: from [10.254.108.81] (munvpn.amd.com. [165.204.72.6])
        by smtp.gmail.com with ESMTPSA id w6-20020adfcd06000000b0034dcb22d82fsm14415768wrm.20.2024.05.07.22.55.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 May 2024 22:55:10 -0700 (PDT)
Message-ID: <040b32b8-c4df-4121-bb0d-f0c6ee9e123d@gmail.com>
Date: Wed, 8 May 2024 07:55:08 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Linus Torvalds <torvalds@linux-foundation.org>,
 Daniel Vetter <daniel@ffwll.ch>
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
 <CAKMK7uGzhAHHkWj0N33NB3OXMFtNHv7=h=P-bdtYkw=Ja9kwHw@mail.gmail.com>
 <CAHk-=whFyOn4vp7+++MTOd1Y3wgVFxRoVdSuPmN1_b6q_Jjkxg@mail.gmail.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>
In-Reply-To: <CAHk-=whFyOn4vp7+++MTOd1Y3wgVFxRoVdSuPmN1_b6q_Jjkxg@mail.gmail.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 933D23F02C
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
	URIBL_BLOCKED(0.00)[ffwll.ch:email,mail-wr1-f49.google.com:rdns,mail-wr1-f49.google.com:helo,gitlab.freedesktop.org:url];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[emersion.fr,collabora.com,kernel.org,zeniv.linux.org.uk,chromium.org,kernel.dk,amd.com,lists.freedesktop.org,vger.kernel.org,suse.cz,labbott.name,lists.linaro.org,gmail.com,linaro.org,syzkaller.appspotmail.com,googlegroups.com];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	DNSWL_BLOCKED(0.00)[165.204.72.6:received,209.85.221.49:from];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FREEMAIL_FROM(0.00)[gmail.com];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[045b454ab35fd82a35fb];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.221.49:from];
	FREEMAIL_ENVFROM(0.00)[gmail.com]
X-Rspamd-Action: no action
Message-ID-Hash: SIBDMWSJITBXQHUACPU5IOWX6PUFIIVL
X-Message-ID-Hash: SIBDMWSJITBXQHUACPU5IOWX6PUFIIVL
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Simon Ser <contact@emersion.fr>, Pekka Paalanen <pekka.paalanen@collabora.com>, Christian Brauner <brauner@kernel.org>, Al Viro <viro@zeniv.linux.org.uk>, keescook@chromium.org, axboe@kernel.dk, christian.koenig@amd.com, dri-devel@lists.freedesktop.org, io-uring@vger.kernel.org, jack@suse.cz, laura@labbott.name, linaro-mm-sig@lists.linaro.org, linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, minhquangbui99@gmail.com, sumit.semwal@linaro.org, syzbot+045b454ab35fd82a35fb@syzkaller.appspotmail.com, syzkaller-bugs@googlegroups.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] epoll: try to be a _bit_ better about file lifetimes
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/SIBDMWSJITBXQHUACPU5IOWX6PUFIIVL/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

Am 07.05.24 um 21:07 schrieb Linus Torvalds:
> On Tue, 7 May 2024 at 11:04, Daniel Vetter <daniel@ffwll.ch> wrote:
>> On Tue, May 07, 2024 at 09:46:31AM -0700, Linus Torvalds wrote:
>>
>>> I'd be perfectly ok with adding a generic "FISAME" VFS level ioctl
>>> too, if this is possibly a more common thing. and not just DRM wants
>>> it.
>>>
>>> Would something like that work for you?
>> Yes.
>>
>> Adding Simon and Pekka as two of the usual suspects for this kind of
>> stuff. Also example code (the int return value is just so that callers know
>> when kcmp isn't available, they all only care about equality):
>>
>> https://gitlab.freedesktop.org/mesa/mesa/-/blob/main/src/util/os_file.c#L239
> That example thing shows that we shouldn't make it a FISAME ioctl - we
> should make it a fcntl() instead, and it would just be a companion to
> F_DUPFD.
>
> Doesn't that strike everybody as a *much* cleaner interface? I think
> F_ISDUP would work very naturally indeed with F_DUPFD.
>
> Yes? No?

Sounds absolutely sane to me.

Christian.

>
>                         Linus

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
