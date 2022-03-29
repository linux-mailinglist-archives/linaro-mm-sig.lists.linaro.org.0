Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id CEACF4EC53B
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 30 Mar 2022 15:09:25 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 127D03EC2E
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 30 Mar 2022 13:09:25 +0000 (UTC)
Received: from mail-pj1-f51.google.com (mail-pj1-f51.google.com [209.85.216.51])
	by lists.linaro.org (Postfix) with ESMTPS id AE6A63EBFD
	for <linaro-mm-sig@lists.linaro.org>; Tue, 29 Mar 2022 16:59:46 +0000 (UTC)
Received: by mail-pj1-f51.google.com with SMTP id jx9so18078571pjb.5
        for <linaro-mm-sig@lists.linaro.org>; Tue, 29 Mar 2022 09:59:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=67yHXoFmcX0ZazheDKYQVpHoB656ZGpg7LX2oma8XGY=;
        b=l1oIEc6kFQcKGLgIxGfSwqNZBvaZGfVzYIpmLE5Rh6nGhFdWOqxOLcEiD5UGOeShLo
         a3iUDj7MTnw1ZVoumywlaRlOqrOguzQaaUg8sl/W8xYELNabR0FkepIhxq53qWfWRHqT
         ocM2HSkoX6c1ycU+gtCJdRWBI5LQV8B2NcIE2eGHLknFjpgkEJzAV6QEilvZPsFmftqT
         gEf10uCzq4cyr50t7r+MHukvbyXMswobdfj+UiEjLCGz8uU2kyzlTjXvCPVu1iLyYPLF
         hpLrTonQaPEFCwIiW4cB09XczJYAql+ov2htCytwylqN1iQbCWxBZsm43uimxjTneIJO
         mdzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to;
        bh=67yHXoFmcX0ZazheDKYQVpHoB656ZGpg7LX2oma8XGY=;
        b=HJg04sfV+ZRJNBMXyUiWK4lZKHfdaQOYI8gUrlqP00D4x3P43Diqu9DxLtt+uaIQGF
         f0TwcdMixSXvn3ElVfk3MtGY+JzKx65CBct3/jV8vfAvKHBOgdRS+GV/ul2kT/LuSRVB
         Fs8fxzTfRMm5gHi5mGWfYNs247UylypR10Gaag9jw8G+A+/Jq3ZYjIyFZvHVYS/a2zt1
         7CbZaF5yrVHwiBxRmNjRNjkqu7P4JUciiS/yBOBC5KmxUyoWznd3gtiEhQqbs+rqDWlv
         3MN+0UB36wPX5744uVPijLy1X+wM4WURl3/K6hTyNYEmouJ8mnF0ppbL7GS+x1Ukw5a+
         k3rA==
X-Gm-Message-State: AOAM532RGt/w/+xhmKe9GOXGKii+eRdCtI3UnNzomyqHNM8eENeyUKlO
	MdkIiP5/Kk+DuyHBz+nhGU0=
X-Google-Smtp-Source: ABdhPJwzy42BlJVB0bBm4Ge7A7WVOaCsDi/5yGBrI0VAwZfeGFTf8i7B6I5tAtAaOfrhDGFcEZ17Ug==
X-Received: by 2002:a17:902:f68f:b0:154:759c:c78 with SMTP id l15-20020a170902f68f00b00154759c0c78mr30853829plg.49.1648573185719;
        Tue, 29 Mar 2022 09:59:45 -0700 (PDT)
Received: from localhost ([2620:10d:c090:400::5:7749])
        by smtp.gmail.com with ESMTPSA id qe15-20020a17090b4f8f00b001c6f4991cd4sm3571258pjb.45.2022.03.29.09.59.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Mar 2022 09:59:45 -0700 (PDT)
Sender: Tejun Heo <htejun@gmail.com>
Date: Tue, 29 Mar 2022 06:59:43 -1000
From: Tejun Heo <tj@kernel.org>
To: "T.J. Mercier" <tjmercier@google.com>
Message-ID: <YkM6/57mVxoNfSvm@slm.duckdns.org>
References: <20220328035951.1817417-1-tjmercier@google.com>
 <20220328035951.1817417-3-tjmercier@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220328035951.1817417-3-tjmercier@google.com>
X-MailFrom: htejun@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: I2PBRQNZ5ZSXV6PCG64USAGL7LKARKBV
X-Message-ID-Hash: I2PBRQNZ5ZSXV6PCG64USAGL7LKARKBV
X-Mailman-Approved-At: Wed, 30 Mar 2022 13:09:02 +0000
CC: David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Jonathan Corbet <corbet@lwn.net>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Arve =?iso-8859-1?B?SGr4bm5lduVn?= <arve@android.com>, Todd Kjos <tkjos@android.com>, Martijn Coenen <maco@android.com>, Joel Fernandes <joel@joelfernandes.org>, Christian Brauner <brauner@kernel.org>, Hridya Valsaraju <hridya@google.com>, Suren Baghdasaryan <surenb@google.com>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Benjamin Gaignard <benjamin.gaignard@linaro.org>, Liam Mark <lmark@codeaurora.org>, Laura Abbott <labbott@redhat.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <john.stultz@linaro.org>, Zefan Li <lizefan.x@bytedance.com>, Johannes Weiner <hannes@cmpxchg.org>, Shuah Khan <shuah@kernel.org>, kaleshsingh@google.com, Kenny.Ho@amd.com, mkoutny@suse.com, skhan@lin
 uxfoundation.org, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, cgroups@vger.kernel.org, linux-kselftest@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC v4 2/8] cgroup: gpu: Add a cgroup controller for allocator attribution of GPU memory
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/I2PBRQNZ5ZSXV6PCG64USAGL7LKARKBV/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hello,

On Mon, Mar 28, 2022 at 03:59:41AM +0000, T.J. Mercier wrote:
> The API/UAPI can be extended to set per-device/total allocation limits
> in the future.

This total thing kinda bothers me. Can you please provide some concrete
examples of how this and per-device limits would be used?

Thanks.

-- 
tejun
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
