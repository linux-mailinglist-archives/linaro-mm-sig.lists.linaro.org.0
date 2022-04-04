Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DA3850A522
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 21 Apr 2022 18:21:53 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 527B547FC0
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 21 Apr 2022 16:21:52 +0000 (UTC)
Received: from mail-pj1-f47.google.com (mail-pj1-f47.google.com [209.85.216.47])
	by lists.linaro.org (Postfix) with ESMTPS id 005063EA5B
	for <linaro-mm-sig@lists.linaro.org>; Mon,  4 Apr 2022 17:42:00 +0000 (UTC)
Received: by mail-pj1-f47.google.com with SMTP id u14so5637955pjj.0
        for <linaro-mm-sig@lists.linaro.org>; Mon, 04 Apr 2022 10:41:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=cN+cryxrTnBG0VJoafZ3s+TyTmI2BuJ8Y3SjnOF9NwE=;
        b=q3aN/qFotQnWnl+DjEG8MO6ne2oneqFucG+YMqB8k3tZY4ziHRZjt9uG5kk2ucPSyJ
         B3t4mekt0LtHaY6B2DxdS9ITSE1r5EeeAd/rhW1xKoa1wo3vU4K2S8P61apUpP5h4bNm
         Ie0A7GhmrIV13SapWYC+pBHHxcMfzG1xl5pi5A5mA6QQacPLxq32GEg+r615aQjVj0cM
         ScAvsigcU1WuLyjMICOCbYf7dvvMMcfNL5CZ9k+EEuJADXpZ4eKJcbWnBjSBr+bT6AiL
         7lCs1XU5CcdliX4j+yjAr9C7RGzTsxJzZ3oMolqcxQoEMANHXQ/CG9u/lINvdUreaUZ7
         6UmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to;
        bh=cN+cryxrTnBG0VJoafZ3s+TyTmI2BuJ8Y3SjnOF9NwE=;
        b=ejfrdcOrSTLeYGKyhR5p8Wzk33Q6M+ejDYtR6UR7RDGEOttT1U6iDa8a9u2eIxtwmm
         j27fSGV95JPisByaf89w2p0sRFOZLshRVuuq1gn6QSpnZ3W6pRTHJA9IWAXiGQOtzqQq
         na82WzekDb39B6viEbH0TYaLNwty8DeIpGYL7ZJ7UArmQG5RE1DgnNFJS1B7fzJLayng
         KWAT3GgB9vXYiLS9vUxoIlSyyMYJ/seYXfJs2/MhaBQeQKZXMSzV6b7ecjsFcQZjhELR
         caFzIlowlUFVfmpY4CFbW6IzgohKORxDTixrUJpOGbtbPR9wMDnk/jHDsCsHpfhdyL6y
         uG0Q==
X-Gm-Message-State: AOAM532MW8U79A7dhrmjviZI9oWolW/Yq8Rxcz0wOrnj1eZiWZy9zkCM
	wqYs+e0MG0jFOIDAECbMY+Y=
X-Google-Smtp-Source: ABdhPJzKUk4qJcY2Yl04uIk073pVWVy0TAgu29TjkZGtqRzd2GqD3mnxPAiabi9k3biaI+nz18T1DA==
X-Received: by 2002:a17:903:110c:b0:14d:8859:5c8 with SMTP id n12-20020a170903110c00b0014d885905c8mr1112876plh.156.1649094118990;
        Mon, 04 Apr 2022 10:41:58 -0700 (PDT)
Received: from localhost ([2620:10d:c090:400::5:baee])
        by smtp.gmail.com with ESMTPSA id v17-20020a63b951000000b0038644f62aeesm10984699pgo.68.2022.04.04.10.41.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Apr 2022 10:41:58 -0700 (PDT)
Sender: Tejun Heo <htejun@gmail.com>
Date: Mon, 4 Apr 2022 07:41:56 -1000
From: Tejun Heo <tj@kernel.org>
To: "T.J. Mercier" <tjmercier@google.com>
Message-ID: <Ykst5K/cI+DUVc94@slm.duckdns.org>
References: <20220328035951.1817417-1-tjmercier@google.com>
 <20220328035951.1817417-3-tjmercier@google.com>
 <YkM6/57mVxoNfSvm@slm.duckdns.org>
 <CABdmKX2Gxg35k7QiL2Vn4zWhmQ4UnM-Z8cnOXR0fwBWyJnZ+Ng@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CABdmKX2Gxg35k7QiL2Vn4zWhmQ4UnM-Z8cnOXR0fwBWyJnZ+Ng@mail.gmail.com>
X-MailFrom: htejun@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: VM5K7MZNGS47WJC55GIZ5U2DGRURPEPI
X-Message-ID-Hash: VM5K7MZNGS47WJC55GIZ5U2DGRURPEPI
X-Mailman-Approved-At: Thu, 21 Apr 2022 16:21:47 +0000
CC: David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Jonathan Corbet <corbet@lwn.net>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Arve =?iso-8859-1?B?SGr4bm5lduVn?= <arve@android.com>, Todd Kjos <tkjos@android.com>, Martijn Coenen <maco@android.com>, Joel Fernandes <joel@joelfernandes.org>, Christian Brauner <brauner@kernel.org>, Hridya Valsaraju <hridya@google.com>, Suren Baghdasaryan <surenb@google.com>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Benjamin Gaignard <benjamin.gaignard@linaro.org>, Liam Mark <lmark@codeaurora.org>, Laura Abbott <labbott@redhat.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <john.stultz@linaro.org>, Zefan Li <lizefan.x@bytedance.com>, Johannes Weiner <hannes@cmpxchg.org>, Shuah Khan <shuah@kernel.org>, Kalesh Singh <kaleshsingh@goo
 gle.com>, Kenny.Ho@amd.com, Michal =?iso-8859-1?Q?Koutn=FD?= <mkoutny@suse.com>, Shuah Khan <skhan@linuxfoundation.org>, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, cgroups@vger.kernel.org, linux-kselftest@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC v4 2/8] cgroup: gpu: Add a cgroup controller for allocator attribution of GPU memory
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/VM5K7MZNGS47WJC55GIZ5U2DGRURPEPI/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hello,

On Wed, Mar 30, 2022 at 01:56:09PM -0700, T.J. Mercier wrote:
> The use case we have for accounting the total (separate from the
> individual devices) is to include the value as part of bugreports, for
> understanding the system-wide amount of dmabuf allocations. I'm not
> aware of an existing need to limit the total. Admittedly this is just
> the sum over the devices, but we currently maintain out of tree code
> to do this sort of thing today. [1]

So, drop this part?

Thanks.

-- 
tejun
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
