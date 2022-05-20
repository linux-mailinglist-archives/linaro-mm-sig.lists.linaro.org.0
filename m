Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 212E8533702
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 25 May 2022 09:03:08 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4EC7D3EC76
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 25 May 2022 07:03:07 +0000 (UTC)
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
	by lists.linaro.org (Postfix) with ESMTPS id 3797B3EE2B
	for <linaro-mm-sig@lists.linaro.org>; Fri, 20 May 2022 01:50:01 +0000 (UTC)
Received: by mail-pl1-f171.google.com with SMTP id q4so6205780plr.11
        for <linaro-mm-sig@lists.linaro.org>; Thu, 19 May 2022 18:50:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=bSYkUjPvAsu074e/VjNGWfjNftItgD9OU7BKxmchNu0=;
        b=IctWEQwULe+HOgPbU7d0NJ3bNOOh3R/ed9A6ET0Gs/piG+Bes/Utvzo/JOuyGD8RRU
         RcDWQ8n8fK3gVNdg7zOFFUdQGbLx/Yeu4mzOrLYeaNU76aARYW0jjqtvRRXuDmBVfrna
         g7qU8icOdLj7kU6hSvSdtAKN4mYIBgh28Dejc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=bSYkUjPvAsu074e/VjNGWfjNftItgD9OU7BKxmchNu0=;
        b=JuUZy8cvZPJQ5WpDK5XvCS57xXWdTOf79zvOvpFoItr3ebgTM+RtyZdK9bz+UyL0qo
         WssxYA+/KLcW1SVcFVo3AVIfGDRvQEDoRVPNGlsjDX+B3u3/aBdoe75maFiRUct5ZlIm
         Pld3ewHfLBjB8lTI9f7GcTiIEKAahNvJ6K8CwIrMB4ze797c5sMuX8QIABAcTje3JEIV
         zo2K1lkAHDWgbsgEpOdJyNcNjQe3StpB9dDImaRRXypKoZZqV70m+ud9n8vn+BW1MyIb
         wnUBSLKV69Ij3IgE1Ou330Z5BavBrlIhGdBFXZM1hiVkSj7WqaoyojUaYIqklAZbO3Wj
         2KAQ==
X-Gm-Message-State: AOAM532oxh1H+328CuIvdaDo8WreQUaoX4a3pksAPJb6nQP0hU08IhdB
	uXmYFuaB9gjsfJfwD2jeKggXug==
X-Google-Smtp-Source: ABdhPJxYCaKfJrQpyhnMwy4bw/c5zkQ+q174lh8wbUasjk9l4ZAUxrQCXZ8SzukBnlB3+yq5G+ayIg==
X-Received: by 2002:a17:902:9887:b0:151:6e1c:7082 with SMTP id s7-20020a170902988700b001516e1c7082mr7427960plp.162.1653011400364;
        Thu, 19 May 2022 18:50:00 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id a23-20020a056a001d1700b0050dc76281ddsm329776pfx.183.2022.05.19.18.49.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 May 2022 18:50:00 -0700 (PDT)
Date: Thu, 19 May 2022 18:49:59 -0700
From: Kees Cook <keescook@chromium.org>
To: Kalesh Singh <kaleshsingh@google.com>
Message-ID: <202205191848.DEE05F6@keescook>
References: <20220519214021.3572840-1-kaleshsingh@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220519214021.3572840-1-kaleshsingh@google.com>
X-MailFrom: keescook@chromium.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: ZAMNKTAI42YUI4AWDQFTHRZ6YVD2FW6E
X-Message-ID-Hash: ZAMNKTAI42YUI4AWDQFTHRZ6YVD2FW6E
X-Mailman-Approved-At: Wed, 25 May 2022 07:03:02 +0000
CC: ilkos@google.com, tjmercier@google.com, surenb@google.com, kernel-team@android.com, Jonathan Corbet <corbet@lwn.net>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Andrew Morton <akpm@linux-foundation.org>, Christoph Anton Mitterer <mail@christoph.anton.mitterer.name>, Mike Rapoport <rppt@kernel.org>, Colin Cross <ccross@google.com>, Randy Dunlap <rdunlap@infradead.org>, linux-kernel@vger.kernel.org, linux-fsdevel@vger.kernel.org, linux-doc@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC PATCH] procfs: Add file path and size to /proc/<pid>/fdinfo
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ZAMNKTAI42YUI4AWDQFTHRZ6YVD2FW6E/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Thu, May 19, 2022 at 02:40:15PM -0700, Kalesh Singh wrote:
> [...]
> +	seq_file_path(m, file, "\n");
> +	seq_putc(m, '\n');
>  
>  	/* show_fd_locks() never deferences files so a stale value is safe */
>  	show_fd_locks(m, file, files);

This comment implies "file" might be stale? Does that mean anything for
the above seq_file_path()?

-- 
Kees Cook
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
