Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 80B4057B2BE
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 20 Jul 2022 10:21:15 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 88163402F5
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 20 Jul 2022 08:21:14 +0000 (UTC)
Received: from mail-pj1-f46.google.com (mail-pj1-f46.google.com [209.85.216.46])
	by lists.linaro.org (Postfix) with ESMTPS id 592F43EA50
	for <linaro-mm-sig@lists.linaro.org>; Wed, 29 Jun 2022 03:24:06 +0000 (UTC)
Received: by mail-pj1-f46.google.com with SMTP id n16-20020a17090ade9000b001ed15b37424so14681849pjv.3
        for <linaro-mm-sig@lists.linaro.org>; Tue, 28 Jun 2022 20:24:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=Fj7BbdljqsoGparCST0EyCcPUKNtLNBlk+LCRCpdJLw=;
        b=oFx79pTDKe/0K4DzWTg5WbhaY9GMAgsDaFSkH6r1vPW1HFdOJXqGQ5UZxgywHDM3Ir
         0equTGt8PyPlERIlnTf5/BcxXxzGITpucSE2VIl8CV1o9ehzFCMhzuOGmi45/AK6qG76
         /8w9TpCEjcwZrf18xju/rDZxtqGU8P6zQ25P+y1i5vCqEbFPPa98WvDxnH8cFtX3sIwJ
         junUVkx5AYbgAFw0eC61vARiqpw1IzYsntMTivQEIBdgIUJa+1mBXf7au2lMkxwOomRF
         Tq177jWJbMD53EgF/Vw9Bn+IKNlGCEHOCstQTlq+u9cuVkwNV5MjGVV2oNYBWWI67o+0
         Kprw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=Fj7BbdljqsoGparCST0EyCcPUKNtLNBlk+LCRCpdJLw=;
        b=CTk8eiTHbHrqFJGF1D3YY/l7+MrkbhSkujCavjp0N0dNxv7UvUI2Tb3UEaNVW5bcBw
         KIJKsUXmTDvJUj4E1Ts664giFwd2h8uWvQc9rRcaL3Qqh2gFM4gedIzmpZq2mHXXQqpj
         dQcr1bYkIjqvwkI5ukqHxACNdfUULqgrlZsi/R7gS72HNM0HvTgklmR9I3fDMHZJ5ZBk
         XcTJGFsDoTX22Op9rSGZcVsztVpeF6AVzAMEyex/l+fhC1+JWfvmyJBh+s48AqfQEVTR
         ObWJy9moPvZ3sS/+kQGyJYlkc1Dgu2trz3Auu3OQrrOFD/8AvdPKniwWBbKOvkj8BBSH
         zILA==
X-Gm-Message-State: AJIora+Z8j3SX0GN14zb3QKngoWbWKudY6rRbIghc0EdhQt7Cobr6NPu
	MGkKk0Gs8IWFCwsbUWd3OI8=
X-Google-Smtp-Source: AGRyM1vsi7CgNn+hm6JA8nRBvn1UfsHiN+DuVQjG+D41n++oNdHScStsgrICm72S8/mDUKvSMDDq4A==
X-Received: by 2002:a17:902:a701:b0:16a:65b:f9f1 with SMTP id w1-20020a170902a70100b0016a065bf9f1mr8387462plq.73.1656473045455;
        Tue, 28 Jun 2022 20:24:05 -0700 (PDT)
Received: from debian.me (subs02-180-214-232-13.three.co.id. [180.214.232.13])
        by smtp.gmail.com with ESMTPSA id p9-20020a1709026b8900b0016372486febsm10011584plk.297.2022.06.28.20.24.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Jun 2022 20:24:04 -0700 (PDT)
Received: by debian.me (Postfix, from userid 1000)
	id E4C29103832; Wed, 29 Jun 2022 10:23:59 +0700 (WIB)
Date: Wed, 29 Jun 2022 10:23:58 +0700
From: Bagas Sanjaya <bagasdotme@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>
Message-ID: <YrvFzoH61feRFoxV@debian.me>
References: <cover.1656409369.git.mchehab@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1656409369.git.mchehab@kernel.org>
X-MailFrom: bagasdotme@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: KPFM3GEPTYHKYAJQJFH6IH67BAL3WOGF
X-Message-ID-Hash: KPFM3GEPTYHKYAJQJFH6IH67BAL3WOGF
X-Mailman-Approved-At: Wed, 20 Jul 2022 08:21:11 +0000
CC: Linux Doc Mailing List <linux-doc@vger.kernel.org>, Mauro Carvalho Chehab <mchehab+huawei@kernel.org>, linux-kernel@vger.kernel.org, Jonathan Corbet <corbet@lwn.net>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, "David S. Miller" <davem@davemloft.net>, "H. Peter Anvin" <hpa@zytor.com>, Alexander Potapenko <glider@google.com>, Alexander Viro <viro@zeniv.linux.org.uk>, Andrew Morton <akpm@linux-foundation.org>, Andrey Grodzovsky <andrey.grodzovsky@amd.com>, Borislav Petkov <bp@alien8.de>, Chanwoo Choi <cw00.choi@samsung.com>, Daniel Vetter <daniel@ffwll.ch>, Dave Hansen <dave.hansen@linux.intel.com>, David Airlie <airlied@linux.ie>, Dmitry Vyukov <dvyukov@google.com>, Eric Dumazet <edumazet@google.com>, Felipe Balbi <balbi@kernel.org>, Heikki Krogerus <heikki.krogerus@linux.intel.com>, Ingo Molnar <mingo@redhat.com>, Jakub Kicinski <kuba@kernel.org>, Johannes Berg <johannes@sipsolutions.net>, Kyungmin Park <kyungmin.park@samsung.com>, Marco Elver <elver@google.com>, M
 yungJoo Ham <myungjoo.ham@samsung.com>, Paolo Abeni <pabeni@redhat.com>, Sumit Semwal <sumit.semwal@linaro.org>, Thomas Gleixner <tglx@linutronix.de>, amd-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, kasan-dev@googlegroups.com, linaro-mm-sig@lists.linaro.org, linux-cachefs@redhat.com, linux-fsdevel@vger.kernel.org, linux-media@vger.kernel.org, linux-mm@kvack.org, linux-pm@vger.kernel.org, linux-sgx@vger.kernel.org, linux-usb@vger.kernel.org, linux-wireless@vger.kernel.org, netdev@vger.kernel.org, x86@kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 00/22] Fix kernel-doc warnings at linux-next
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/KPFM3GEPTYHKYAJQJFH6IH67BAL3WOGF/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Tue, Jun 28, 2022 at 10:46:04AM +0100, Mauro Carvalho Chehab wrote:
> As we're currently discussing about making kernel-doc issues fatal when
> CONFIG_WERROR is enable, let's fix all 60 kernel-doc warnings 
> inside linux-next:
> 

To be fair, besides triggering error on kernel-doc warnings, Sphinx
warnings should also be errors on CONFIG_WERROR.

-- 
An old man doll... just what I always wanted! - Clara
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
