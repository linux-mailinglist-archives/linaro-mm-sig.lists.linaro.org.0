Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id D4D518C1235
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  9 May 2024 17:48:49 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 979FC440E1
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  9 May 2024 15:48:48 +0000 (UTC)
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	by lists.linaro.org (Postfix) with ESMTPS id 2FBF340072
	for <linaro-mm-sig@lists.linaro.org>; Thu,  9 May 2024 15:48:38 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linux-foundation.org header.s=google header.b=Uq1LT2wJ;
	spf=pass (lists.linaro.org: domain of torvalds@linuxfoundation.org designates 209.85.218.52 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org;
	dmarc=none
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-a59a609dd3fso181311366b.0
        for <linaro-mm-sig@lists.linaro.org>; Thu, 09 May 2024 08:48:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linux-foundation.org; s=google; t=1715269717; x=1715874517; darn=lists.linaro.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=38BuvpIpkB3oaxq+zw4VsWBKcS3P81IEjFcYuWVYCpU=;
        b=Uq1LT2wJsyET6NZTR1+D/JcJCQ4KeKLi0IXDkNTKMDJnem+Yng28inJ1irmn8tzLyN
         9S7kzoCyeS5PdnYSo6uiVAPQ/11GUF72EiV0pVG5zvofDs348o51LiCBpWTokvedLCxk
         tf2gTIMOk0utWT5C4l3EiNQjTzqcX21sa3/Jg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715269717; x=1715874517;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=38BuvpIpkB3oaxq+zw4VsWBKcS3P81IEjFcYuWVYCpU=;
        b=chuj7GJdnTwNV+lsq7rEI8BY3zTcH1VQai/sNpZBLJkuDvulMx6cDCZUQGDHJZJdtL
         4qSqbr4H6/1JXtTxrto7BJ+RLiHv35cngVw3Clxw/qVm+tYw+J8xwrFy3XtBldAvQitE
         oZlDw7YPaDzuHaVnaNwD3mAVvO+hyfbK2mIgtAuXWXSPHNk4tz4XVJ507X4phbRRY3jn
         rXsxYoHp6S8vh9ENi8wxPe5MLzpL6LGXi2H+QYW3jd4kWGdbl2gK7t5MYYD8vlOQzFOn
         VmYBXXz3Sq9Y4tjvQUMy8SvgPqrNz8g6GyzM745Frjh84GyPe9Z3lD2nvP/NtF0y4FAu
         YEXg==
X-Forwarded-Encrypted: i=1; AJvYcCUoL0JHeKqSLyQcGYD08gMDZ5ZZ/vk9C40jyUiJwb3kJ/UEoLsDF/82Hk21Y7iXcb07GQwYAsBK8ZZsj+JD6Cy9ExsIsPDIyHdFnF/lGBU=
X-Gm-Message-State: AOJu0Yxav3qv8F0CZyNhOZEDSA92lRc8nU7M1BER7CgB0BMF49wdF61u
	2xScxBnJ8mcy3eb/bMsCfV937bdPqY/AepHEE/8oXURuZZzNGFmD8nxauAqN0mVObPfEndtF2w4
	NQgyAPg==
X-Google-Smtp-Source: AGHT+IEiXzaDVPUro61dcprqIUXcKQpv6YTMlx/C2GH/mSUbdpPpfSITentRwCBQFbjKXImJrXVl2w==
X-Received: by 2002:a17:907:720f:b0:a59:9ed5:eefc with SMTP id a640c23a62f3a-a5a2d30ba12mr5565066b.32.1715269717210;
        Thu, 09 May 2024 08:48:37 -0700 (PDT)
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com. [209.85.208.51])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a5a17b0150csm85587166b.154.2024.05.09.08.48.36
        for <linaro-mm-sig@lists.linaro.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 May 2024 08:48:37 -0700 (PDT)
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-573137ba8d7so3958437a12.0
        for <linaro-mm-sig@lists.linaro.org>; Thu, 09 May 2024 08:48:36 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCULvTjQ0Tj1Dv56Tjpe5YuOnJbwTJVcgS6fjJMHi0GXm7jyqZg1qRDndbvIl3rwtxz0jhXAypiu7rCCdMT2QhOktb2sy6le9GHnaRvmOZs=
X-Received: by 2002:a17:906:19d0:b0:a59:fb06:5d35 with SMTP id
 a640c23a62f3a-a5a1156665fmr240732966b.8.1715269716628; Thu, 09 May 2024
 08:48:36 -0700 (PDT)
MIME-Version: 1.0
References: <20240504-wohngebiet-restwert-6c3c94fddbdd@brauner>
 <CAHk-=wj_Fu1FkMFrjivQ=MGkwkKXZBuh0f4BEhcZHD5WCvHesw@mail.gmail.com>
 <CAHk-=wj6XL9MGCd_nUzRj6SaKeN0TsyTTZDFpGdW34R+zMZaSg@mail.gmail.com>
 <b1728d20-047c-4e28-8458-bf3206a1c97c@gmail.com> <ZjoKX4nmrRdevyxm@phenom.ffwll.local>
 <CAHk-=wgh5S-7sCCqXBxGcXHZDhe4U8cuaXpVTjtXLej2si2f3g@mail.gmail.com>
 <CAKMK7uGzhAHHkWj0N33NB3OXMFtNHv7=h=P-bdtYkw=Ja9kwHw@mail.gmail.com>
 <CAHk-=whFyOn4vp7+++MTOd1Y3wgVFxRoVdSuPmN1_b6q_Jjkxg@mail.gmail.com>
 <CAHk-=wixO-fmQYgbGic-BQVUd9RQhwGsF4bGk8ufWDKnRS1v_A@mail.gmail.com>
 <CAHk-=wjmC+coFdA_k6_JODD8_bvad=H4pn4yGREqOTm+eMB+rg@mail.gmail.com> <20240509-kutschieren-tacker-c3968b8d3853@brauner>
In-Reply-To: <20240509-kutschieren-tacker-c3968b8d3853@brauner>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Thu, 9 May 2024 08:48:20 -0700
X-Gmail-Original-Message-ID: <CAHk-=wgKdWwdVUvjSNLL-ne9ezQN=BrwN34Kq38_=9yF8c03uA@mail.gmail.com>
Message-ID: <CAHk-=wgKdWwdVUvjSNLL-ne9ezQN=BrwN34Kq38_=9yF8c03uA@mail.gmail.com>
To: Christian Brauner <brauner@kernel.org>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 2FBF340072
X-Spamd-Bar: -
X-Spamd-Result: default: False [-1.80 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	FORGED_SENDER(0.30)[torvalds@linux-foundation.org,torvalds@linuxfoundation.org];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[linux-foundation.org:s=google];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.218.52:from];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCPT_COUNT_TWELVE(0.00)[21];
	TAGGED_RCPT(0.00)[045b454ab35fd82a35fb];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[ffwll.ch,emersion.fr,collabora.com,gmail.com,zeniv.linux.org.uk,chromium.org,kernel.dk,amd.com,lists.freedesktop.org,vger.kernel.org,suse.cz,labbott.name,lists.linaro.org,linaro.org,syzkaller.appspotmail.com,googlegroups.com];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	FROM_NEQ_ENVFROM(0.00)[torvalds@linux-foundation.org,torvalds@linuxfoundation.org];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[linux-foundation.org];
	DKIM_TRACE(0.00)[linux-foundation.org:+]
X-Rspamd-Action: no action
Message-ID-Hash: RJUCDAUDRGK3VREHSAUOX4KFJP6UQU2U
X-Message-ID-Hash: RJUCDAUDRGK3VREHSAUOX4KFJP6UQU2U
X-MailFrom: torvalds@linuxfoundation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Daniel Vetter <daniel@ffwll.ch>, Simon Ser <contact@emersion.fr>, Pekka Paalanen <pekka.paalanen@collabora.com>, Al Viro <viro@zeniv.linux.org.uk>, keescook@chromium.org, axboe@kernel.dk, christian.koenig@amd.com, dri-devel@lists.freedesktop.org, io-uring@vger.kernel.org, jack@suse.cz, laura@labbott.name, linaro-mm-sig@lists.linaro.org, linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, minhquangbui99@gmail.com, sumit.semwal@linaro.org, syzbot+045b454ab35fd82a35fb@syzkaller.appspotmail.com, syzkaller-bugs@googlegroups.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] epoll: try to be a _bit_ better about file lifetimes
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/RJUCDAUDRGK3VREHSAUOX4KFJP6UQU2U/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Thu, 9 May 2024 at 04:39, Christian Brauner <brauner@kernel.org> wrote:
>
> Not worth it without someone explaining in detail why imho. First pass
> should be to try and replace kcmp() in scenarios where it's obviously
> not needed or overkill.

Ack.

> I've added a CLASS(fd_raw) in a preliminary patch since we'll need that
> anyway which means that your comparison patch becomes even simpler imho.
> I've also added a selftest patch:
>
> https://git.kernel.org/pub/scm/linux/kernel/git/vfs/vfs.git/log/?h=vfs.misc

LGTM.

Maybe worth adding an explicit test for "open same file, but two
separate opens, F_DUPFD_QUERY returns 0? Just to clarify the "it's not
testing the file on the filesystem for equality, but the file pointer
itself".

             Linus
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
