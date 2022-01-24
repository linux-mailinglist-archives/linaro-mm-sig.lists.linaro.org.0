Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id E51924B647F
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 15 Feb 2022 08:39:11 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2A54B3EEAE
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 15 Feb 2022 07:39:11 +0000 (UTC)
Received: from mail-oi1-f180.google.com (mail-oi1-f180.google.com [209.85.167.180])
	by lists.linaro.org (Postfix) with ESMTPS id 10E4D3ED8B
	for <linaro-mm-sig@lists.linaro.org>; Mon, 24 Jan 2022 08:25:49 +0000 (UTC)
Received: by mail-oi1-f180.google.com with SMTP id x193so24451956oix.0
        for <linaro-mm-sig@lists.linaro.org>; Mon, 24 Jan 2022 00:25:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=K5Kon1fyx96zs+S9bI+PC9J+wxhNv56hJEaz7FbSFSE=;
        b=eazm9+k5NrSkysNa4r0Etw/X4kuNIAgY2x0kj7nlI9lFPb6h4Xs6BwKJDPGQ+z3Y9P
         2XjCpVQ99nUVkdVvIR+f7P6/KjIpbVESJnVrtlGzipUn5sYQJg5O2foAbtHA2EjbElPi
         9Sj6z+OszOIDJT247jEQPO9zI+nSzuL79xivSwW1VtJSEA99a/QdKzN7Pamgsk7qOHk7
         HmVcTzATtNIn2RIRXLLegt4OYVIJTQn9aQTaSJMta+mraS7Rv7MJM84g6Og7EQa+WqOl
         hriMvAi26Qz3zrY1+keHAYUowvfb2AJqsVj2ApjjqNycg8KtiK7q9CcyOzvTZ8AEbRg7
         VlKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=K5Kon1fyx96zs+S9bI+PC9J+wxhNv56hJEaz7FbSFSE=;
        b=tcnxc3srcs+Q6b1TTzFnAe83NBUEohUprUEE4YZiwrgAyOg2KMBiAqX0VPgxBCk74m
         +ldEKiWvfN6CeNVgSylLgXfQmopuRJk/v7ac5UqnS5pHhOrZVZjpUa3MxtrMiHosnh0l
         BabwQ6HR9n/JMtOLu+tPk++iboipJCFVMYDtpNwDWVogtbtL2q+ASPheQFHYo7wjn9Hu
         wcgw/A5eMSSt6G5Eu+q1dTU/6GFql164dmyk1r8itXqaFWoKMqqpchVwIOAc4YViyA62
         ojjlMFPb0R32sm5JZjzeqLO7fd8xCUyc0PLjlUEwFQAFx8fToWTiHQV5vCDrSvtpxgIM
         nFcg==
X-Gm-Message-State: AOAM5339lkkCWjgQbU/D+Twk0ZqKwOigO0fcxGtuJWKc39kjOShfrmOC
	0KFLaGAlKri/HXuFBhV58aO7mjVsvS9R+xYY+8mjNA==
X-Google-Smtp-Source: ABdhPJy/mCoQ+yHuD/GHeBHQU6ztq1bT+RAtkGasd/wxL3uYVGLEuF1Vk0VGXgNWZnYdPvLrGxKFp1OI8pKW7eAq7Iw=
X-Received: by 2002:a05:6808:a97:: with SMTP id q23mr606047oij.4.1643012748254;
 Mon, 24 Jan 2022 00:25:48 -0800 (PST)
MIME-Version: 1.0
References: <20220124025205.329752-1-liupeng256@huawei.com> <20220124025205.329752-4-liupeng256@huawei.com>
In-Reply-To: <20220124025205.329752-4-liupeng256@huawei.com>
From: Marco Elver <elver@google.com>
Date: Mon, 24 Jan 2022 09:25:36 +0100
Message-ID: <CANpmjNNYG=izN12sqaB3dYbGmM=2yQ8gK=8_BMHkuoaKWMmYPw@mail.gmail.com>
To: Peng Liu <liupeng256@huawei.com>
X-MailFrom: elver@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: CZZVUEQSYJFLKFD3RGJEO2XBPBHTODQW
X-Message-ID-Hash: CZZVUEQSYJFLKFD3RGJEO2XBPBHTODQW
X-Mailman-Approved-At: Tue, 15 Feb 2022 07:38:41 +0000
CC: glider@google.com, dvyukov@google.com, corbet@lwn.net, christian.koenig@amd.com, akpm@linux-foundation.org, kasan-dev@googlegroups.com, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-mm@kvack.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 3/3] kfence: Make test case compatible with run time set sample interval
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/CZZVUEQSYJFLKFD3RGJEO2XBPBHTODQW/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Mon, 24 Jan 2022 at 03:37, 'Peng Liu' via kasan-dev
<kasan-dev@googlegroups.com> wrote:
>
> The parameter kfence_sample_interval can be set via boot parameter
> and late shell command. However, KFENCE test case just use compile
> time CONFIG_KFENCE_SAMPLE_INTERVAL, this will make KFENCE test case
> not run as user desired. This patch will make KFENCE test case
> compatible with run-time-set sample interval.
>
> Signed-off-by: Peng Liu <liupeng256@huawei.com>
> ---
>  include/linux/kfence.h  | 2 ++
>  mm/kfence/core.c        | 3 ++-
>  mm/kfence/kfence_test.c | 8 ++++----
>  3 files changed, 8 insertions(+), 5 deletions(-)
>
> diff --git a/include/linux/kfence.h b/include/linux/kfence.h
> index bf91b76b87ee..0fc913a7f017 100644
> --- a/include/linux/kfence.h
> +++ b/include/linux/kfence.h
> @@ -19,6 +19,8 @@
>
>  extern bool kfence_enabled;
>  extern unsigned long kfence_num_objects;
> +extern unsigned long kfence_sample_interval;
> +
>  /*
>   * We allocate an even number of pages, as it simplifies calculations to map
>   * address to metadata indices; effectively, the very first page serves as an
> diff --git a/mm/kfence/core.c b/mm/kfence/core.c
> index 2301923182b8..e2fcae34cc84 100644
> --- a/mm/kfence/core.c
> +++ b/mm/kfence/core.c
> @@ -50,7 +50,8 @@
>
>  bool kfence_enabled __read_mostly;
>
> -static unsigned long kfence_sample_interval __read_mostly = CONFIG_KFENCE_SAMPLE_INTERVAL;
> +unsigned long kfence_sample_interval __read_mostly = CONFIG_KFENCE_SAMPLE_INTERVAL;
> +EXPORT_SYMBOL(kfence_sample_interval); /* Export for test modules. */

While it would make some situations more convenient, I've wanted to
avoid exporting a new symbol just for the test. And in most cases it
only makes sense to run the test on a custom debug kernel.

Why do you need this?

Should you really need this, I suggest at least using
EXPORT_SYMBOL_GPL. Should you want it, you can resend this patch
standalone detached from the rest.

Thanks,
-- Marco
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
