Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id E4BA08C02CF
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  8 May 2024 19:15:18 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EBCE93F460
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  8 May 2024 17:15:17 +0000 (UTC)
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	by lists.linaro.org (Postfix) with ESMTPS id 3199C3F460
	for <linaro-mm-sig@lists.linaro.org>; Wed,  8 May 2024 17:15:04 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linux-foundation.org header.s=google header.b=AIHXh0Ai;
	spf=pass (lists.linaro.org: domain of torvalds@linuxfoundation.org designates 209.85.167.52 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org;
	dmarc=none
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-52192578b95so1169331e87.2
        for <linaro-mm-sig@lists.linaro.org>; Wed, 08 May 2024 10:15:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linux-foundation.org; s=google; t=1715188503; x=1715793303; darn=lists.linaro.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=U/4yjhmm7i2TdW/kF2dab+x944KGHXX8XGDp8OQOwgM=;
        b=AIHXh0Ai83Y1h2MgrD3og4498mNxr8QK3XQ1shHQu4/sqVcdd0HoEuckkQvyLTd1ce
         RVxMGBbXVfsUPH/+k97jC7MeE06Qr50DjtkiXtxxdDxW98EfxWn8yCqIhc7y71jw/mp4
         jiZmQx5u+8Eyv4K5nxSWAzZmJeK4QTxKRnlwk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715188503; x=1715793303;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=U/4yjhmm7i2TdW/kF2dab+x944KGHXX8XGDp8OQOwgM=;
        b=m57HTLvXa/M5OLPijO+QMuiIB7DJaQDzzKmUN7Ulv1E+UhDBdO62bU7kL3a331KsiL
         5H6CaYr13qf32HOmFkFWeZU1y67S9wmg8KVbwvn12pr1IJ0fJTc08MgilBnRI/45YNet
         158UG+yTuxvkCJt0vY03iKCDuLImC9ksdKUcUwHUaAwyflX6Ky/h2RoneQGArOUgfQpi
         Y1JRKz9kGxrooZ2AHlwSdVQW/MH3HuFtanhXqItEAxwdz0gTAQREni4mog0TH4Nw+Zbc
         5Fre2/0cSZhtpu66I0ot6tEJjeZ6+p3bRpHXCuuAsDiqWD7l1pGNpgD9j7CUAxxEYdIx
         2Epw==
X-Forwarded-Encrypted: i=1; AJvYcCXWbTVAHJC4+SPk0sEd7x13zCGoPYWsNHTdGKqpkbW3YbjAEy2FxFuokEEwaJdLTZYb3Zx3vCNYFtsEBUQ5+RaRdY65Ly38WoIZMbC79Js=
X-Gm-Message-State: AOJu0YyZAadm2TGIrmTTNkyn9+HMMG1BiCCe63pWqhR4yGcRuIqsZYby
	TyTWJqiRy1yUK5SVqeZnXLSDR/pfTNz618GwDtbcYLjvAKz60VpEXBdDASp281XwFQh1vah4liz
	/gIILmA==
X-Google-Smtp-Source: AGHT+IFQPG6PZMggRpIwCkpZGEW6iFaGipw2/6mzyGHuvav896LxyAq/MFB+S2hyR3o8bxuOQkIG1A==
X-Received: by 2002:a19:640c:0:b0:513:1a9c:ae77 with SMTP id 2adb3069b0e04-5217cc4555bmr1579006e87.52.1715188502698;
        Wed, 08 May 2024 10:15:02 -0700 (PDT)
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com. [209.85.218.47])
        by smtp.gmail.com with ESMTPSA id bt9-20020a0564020a4900b005729c4c2501sm7781911edb.24.2024.05.08.10.15.01
        for <linaro-mm-sig@lists.linaro.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 May 2024 10:15:01 -0700 (PDT)
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-a59a17fcc6bso1092724366b.1
        for <linaro-mm-sig@lists.linaro.org>; Wed, 08 May 2024 10:15:01 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUbVemgtLupM1WRFnyq14ATYL6pWhHamYVBK64EkB3I89BAPnq3ntcvKd4TTJVZhceYDP8vq4PRzDckOAP/udHRg1VnJgerhUxZ7PHD5ww=
X-Received: by 2002:a17:906:a996:b0:a59:ca9c:4de9 with SMTP id
 a640c23a62f3a-a59fb9f5184mr235459866b.76.1715188500986; Wed, 08 May 2024
 10:15:00 -0700 (PDT)
MIME-Version: 1.0
References: <202405031110.6F47982593@keescook> <20240503211129.679762-2-torvalds@linux-foundation.org>
 <20240503212428.GY2118490@ZenIV> <CAHk-=wjpsTEkHgo1uev3xGJ2bQXYShaRf3GPEqDWNgUuKx0JFw@mail.gmail.com>
 <20240504-wohngebiet-restwert-6c3c94fddbdd@brauner> <CAHk-=wj_Fu1FkMFrjivQ=MGkwkKXZBuh0f4BEhcZHD5WCvHesw@mail.gmail.com>
 <CAHk-=wj6XL9MGCd_nUzRj6SaKeN0TsyTTZDFpGdW34R+zMZaSg@mail.gmail.com>
 <b1728d20-047c-4e28-8458-bf3206a1c97c@gmail.com> <ZjoKX4nmrRdevyxm@phenom.ffwll.local>
 <CAHk-=wgh5S-7sCCqXBxGcXHZDhe4U8cuaXpVTjtXLej2si2f3g@mail.gmail.com>
 <CAKMK7uGzhAHHkWj0N33NB3OXMFtNHv7=h=P-bdtYkw=Ja9kwHw@mail.gmail.com>
 <CAHk-=whFyOn4vp7+++MTOd1Y3wgVFxRoVdSuPmN1_b6q_Jjkxg@mail.gmail.com> <CAHk-=wixO-fmQYgbGic-BQVUd9RQhwGsF4bGk8ufWDKnRS1v_A@mail.gmail.com>
In-Reply-To: <CAHk-=wixO-fmQYgbGic-BQVUd9RQhwGsF4bGk8ufWDKnRS1v_A@mail.gmail.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Wed, 8 May 2024 10:14:44 -0700
X-Gmail-Original-Message-ID: <CAHk-=wjmC+coFdA_k6_JODD8_bvad=H4pn4yGREqOTm+eMB+rg@mail.gmail.com>
Message-ID: <CAHk-=wjmC+coFdA_k6_JODD8_bvad=H4pn4yGREqOTm+eMB+rg@mail.gmail.com>
To: Daniel Vetter <daniel@ffwll.ch>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 3199C3F460
X-Spamd-Bar: -
X-Spamd-Result: default: False [-1.70 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	FORGED_SENDER(0.30)[torvalds@linux-foundation.org,torvalds@linuxfoundation.org];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[linux-foundation.org:s=google];
	MIME_GOOD(-0.10)[text/plain];
	URIBL_BLOCKED(0.00)[mail-lf1-f52.google.com:rdns,mail-lf1-f52.google.com:helo];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[linux-foundation.org];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[emersion.fr,collabora.com,gmail.com,kernel.org,zeniv.linux.org.uk,chromium.org,kernel.dk,amd.com,lists.freedesktop.org,vger.kernel.org,suse.cz,labbott.name,lists.linaro.org,linaro.org,syzkaller.appspotmail.com,googlegroups.com];
	DKIM_TRACE(0.00)[linux-foundation.org:+];
	MISSING_XM_UA(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[torvalds@linux-foundation.org,torvalds@linuxfoundation.org];
	RCPT_COUNT_TWELVE(0.00)[21];
	NEURAL_HAM(-0.00)[-1.000];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.167.52:from];
	TAGGED_RCPT(0.00)[045b454ab35fd82a35fb];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
Message-ID-Hash: C5T3HGJTO2SRPLYIBZOGVCCSELLCVNEF
X-Message-ID-Hash: C5T3HGJTO2SRPLYIBZOGVCCSELLCVNEF
X-MailFrom: torvalds@linuxfoundation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Simon Ser <contact@emersion.fr>, Pekka Paalanen <pekka.paalanen@collabora.com>, Christian Brauner <brauner@kernel.org>, Al Viro <viro@zeniv.linux.org.uk>, keescook@chromium.org, axboe@kernel.dk, christian.koenig@amd.com, dri-devel@lists.freedesktop.org, io-uring@vger.kernel.org, jack@suse.cz, laura@labbott.name, linaro-mm-sig@lists.linaro.org, linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, minhquangbui99@gmail.com, sumit.semwal@linaro.org, syzbot+045b454ab35fd82a35fb@syzkaller.appspotmail.com, syzkaller-bugs@googlegroups.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] epoll: try to be a _bit_ better about file lifetimes
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/C5T3HGJTO2SRPLYIBZOGVCCSELLCVNEF/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Wed, 8 May 2024 at 09:19, Linus Torvalds
<torvalds@linux-foundation.org> wrote:
>
> So since we already have two versions of F_DUPFD (the other being
> F_DUPFD_CLOEXEC) I decided that the best thing to do is to just extend
> on that existing naming pattern, and called it F_DUPFD_QUERY instead.
>
> I'm not married to the name, so if somebody hates it, feel free to
> argue otherwise.

Side note: with this patch, doing

   ret = fcntl(fd1, F_DUPFD_QUERY, fd2);

will result in:

 -1 (EBADF): 'fd1' is not a valid file descriptor
 -1 (EINVAL): old kernel that doesn't support F_DUPFD_QUERY
 0: fd2 does not refer to the same file as fd1
 1: fd2 is the same 'struct file' as fd1

and it might be worth noting a couple of things here:

 (a) fd2 being an invalid file descriptor does not cause EBADF, it
just causes "does not match".

 (b) we *could* use more bits for more equality

IOW, it would possibly make sense to extend the 0/1 result to be

- bit #0: same file pointer
- bit #1: same path
- bit #2: same dentry
- bit #3: same inode

which are all different levels of "sameness".

Does anybody care? Do we want to extend on this "sameness"? I'm not
convinced, but it might be a good idea to document this as a possibly
future extension, ie *if* what you care about is "same file pointer",
maybe you should make sure to only look at bit #0.

               Linus
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
