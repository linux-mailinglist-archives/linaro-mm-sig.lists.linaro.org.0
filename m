Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DA2F4EC53A
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 30 Mar 2022 15:09:21 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4407A3EC36
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 30 Mar 2022 13:09:20 +0000 (UTC)
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179])
	by lists.linaro.org (Postfix) with ESMTPS id A346E3EBFD
	for <linaro-mm-sig@lists.linaro.org>; Tue, 29 Mar 2022 16:50:37 +0000 (UTC)
Received: by mail-pl1-f179.google.com with SMTP id a16so1246258plh.13
        for <linaro-mm-sig@lists.linaro.org>; Tue, 29 Mar 2022 09:50:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=oo4DwVPmc4Xc8mHsSOZJPPM1+kxb1H+BME8RduWXyEc=;
        b=fon/v7xEg/MG9yKo0ZhFyVDd8Pi8tu6+Ushj4CQ5i5ZK7JvGdhYA+9e/SNRbZmP9Sv
         pCKmTk3lb6hjAAWbXCrUihV4aR6Osupca5LKufEEjFzjS5dKaHLe0jNplTFUZ36iHnVk
         sTubKidTh4TFkPcklY8dTxB8YzPtwQKC9XMO0UBR3PrCLB/DdkbgqeffVh5WeCzY1Kz3
         JiapQ7p+VMjbsVZb1XgQylMCEerXzU91lVY69si8AUutSOzJsBTatSYV6g7QbeGrvQUa
         oPrdqMZejb1WJMC3kUMFa0DQeBm3jfo1vJfKQPQsi7YcylRvBDYfhLYmZlW2miVTOKKE
         o0Mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to;
        bh=oo4DwVPmc4Xc8mHsSOZJPPM1+kxb1H+BME8RduWXyEc=;
        b=n+147TRtCsWk1DEGpT5PYr3eNilyiMrcvvgfpucrJLy4oVpFtqyhhwryHb4k1K4JoY
         reltN7hwyhgAHwUXi4FnRkU+pTxY4H7945XNZE7ZjkghXR9Vlv3G2UpWi8ophk4BxCk0
         Ymsw8c18nPM5d2OWJzX1EY9AjGUvAmZA7ipOwQ3p0fyqsdjUFXMZHnAyHh9++aJkJl9z
         m53J/Rciz6cTu64vtadvZ68WHSe4XOY33rzqZVF9beiCp/BlFYnXQiw6Pzfhe37UAV0S
         EbcGKkNTfawnDt2xcPwkUOp0BnxrAvt00IJUKczqz3GOiHC2/5uhdIRxTgNgq2M5iVj0
         kiCA==
X-Gm-Message-State: AOAM530SrIv5dL6n8TMNUcDXjJzSWYDmBMvfmETIC0KWzZLvxts+SOnq
	33bczuvjgJg/FC2nvxkqgWc=
X-Google-Smtp-Source: ABdhPJwK34gym8LY0bVce8JYqwr3XDALjGLRfStGWGhzeJS7utaFiUFkwfefNjUZnxfhL3wq68o19Q==
X-Received: by 2002:a17:903:246:b0:153:87f0:a93e with SMTP id j6-20020a170903024600b0015387f0a93emr31382772plh.171.1648572636435;
        Tue, 29 Mar 2022 09:50:36 -0700 (PDT)
Received: from localhost ([2620:10d:c090:400::5:7749])
        by smtp.gmail.com with ESMTPSA id b25-20020a637159000000b00381fda49d15sm17968864pgn.39.2022.03.29.09.50.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Mar 2022 09:50:35 -0700 (PDT)
Sender: Tejun Heo <htejun@gmail.com>
Date: Tue, 29 Mar 2022 06:50:34 -1000
From: Tejun Heo <tj@kernel.org>
To: Daniel Vetter <daniel@ffwll.ch>
Message-ID: <YkM42vdq3mdIP9Zl@slm.duckdns.org>
References: <20220328035951.1817417-1-tjmercier@google.com>
 <20220328035951.1817417-5-tjmercier@google.com>
 <YkHH/0Use7F30UUE@phenom.ffwll.local>
 <CABdmKX01p6g_iHsB6dd4Wwh=8iLdYiUqdY6_yyA5ax2YNHt6tQ@mail.gmail.com>
 <YkLGbL5Z3HVCyVkK@phenom.ffwll.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YkLGbL5Z3HVCyVkK@phenom.ffwll.local>
X-MailFrom: htejun@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: Y5BUZWYW2RV6H6I5W2AVAJSGPDPZMHU5
X-Message-ID-Hash: Y5BUZWYW2RV6H6I5W2AVAJSGPDPZMHU5
X-Mailman-Approved-At: Wed, 30 Mar 2022 13:09:01 +0000
CC: "T.J. Mercier" <tjmercier@google.com>, David Airlie <airlied@linux.ie>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Jonathan Corbet <corbet@lwn.net>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Arve =?iso-8859-1?B?SGr4bm5lduVn?= <arve@android.com>, Todd Kjos <tkjos@android.com>, Martijn Coenen <maco@android.com>, Joel Fernandes <joel@joelfernandes.org>, Christian Brauner <brauner@kernel.org>, Hridya Valsaraju <hridya@google.com>, Suren Baghdasaryan <surenb@google.com>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Benjamin Gaignard <benjamin.gaignard@linaro.org>, Liam Mark <lmark@codeaurora.org>, Laura Abbott <labbott@redhat.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <john.stultz@linaro.org>, Zefan Li <lizefan.x@bytedance.com>, Johannes Weiner <hannes@cmpxchg.org>, Shuah Khan <shuah@kernel.org>, Kalesh Singh <kaleshsingh@google.com>, Kenny.Ho@amd.com, Michal
  =?iso-8859-1?Q?Koutn=FD?= <mkoutny@suse.com>, Shuah Khan <skhan@linuxfoundation.org>, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, cgroups@vger.kernel.org, linux-kselftest@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC v4 4/8] dmabuf: heaps: export system_heap buffers with GPU cgroup charging
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/Y5BUZWYW2RV6H6I5W2AVAJSGPDPZMHU5/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Tue, Mar 29, 2022 at 10:42:20AM +0200, Daniel Vetter wrote:
> Hm I just realized ... are the names in the groups abi? If yes then I
> think we need to fix this before we merge anything.

Yes.

Thanks.

-- 
tejun
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
