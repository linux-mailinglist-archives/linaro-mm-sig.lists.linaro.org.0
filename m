Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 8924E4B6485
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 15 Feb 2022 08:39:41 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C22D23ED76
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 15 Feb 2022 07:39:40 +0000 (UTC)
Received: from mail-ot1-f49.google.com (mail-ot1-f49.google.com [209.85.210.49])
	by lists.linaro.org (Postfix) with ESMTPS id 2B7C5401BF
	for <linaro-mm-sig@lists.linaro.org>; Mon, 24 Jan 2022 12:21:27 +0000 (UTC)
Received: by mail-ot1-f49.google.com with SMTP id o9-20020a9d7189000000b0059ee49b4f0fso4848804otj.2
        for <linaro-mm-sig@lists.linaro.org>; Mon, 24 Jan 2022 04:21:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=5HHwOHpu3DODX4uWQ1+JZsd1/iIv5h6cdRibus7mBoQ=;
        b=lf093PoaWmusMgbiWy/WDpNTxiGQ8V5bvGmNAVRCS7jWCTTUL3SvfmEUxY+2pcHc7x
         zhpDlcNUDYTQub/RIKGlX2iDEwmyowOkMcFSp1fD/sSe0PxMuEP6Iqx9L1voRUFeqlt2
         85EUPdAFScwMwM1thEV/3TbCbQ6SndwlDnZylNYQxLTJRMXIG5dOt7mCubuFU5zvZPeQ
         PCYslMpSLeZzcQbq+6ho807GRSEOEibqCUZ1e3hoD6Y0M7ifNYMJF2vyaBhBmdVXtsxY
         Oub8NhYRxSmPX+89FDlveehVTV9p+4MIjScv2djqoYjLokXFVW4wISpaV7KfHCGxmQ2/
         gAQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=5HHwOHpu3DODX4uWQ1+JZsd1/iIv5h6cdRibus7mBoQ=;
        b=Cto9+C25Fy8xToftOlGLz1uiGqsucz3xUmjhKg5CK9Dx+d5+rKn9QulUjXEq9IFoZA
         KlFrs29PC/wgm1E79lOkkYzNQOEjF4MYIDrab+fgjcfGFmwOs1/N9nUXS+mwbTVES0pS
         b6KbmwwTXZCIWVyeQbD0V0vqCEgQyfI/MBeu0hKO6zpVckOFFxeaXWYGloA0+tKUAQYj
         tZ4K3UZii23NtxxpFglE9FaAapvEcwr0sKZNsxRd4nM4dwZRLKAv7xtsGcfzPPWfJFKM
         2vooqbOHQE2qYXLhENAb/60NUHA47Cz5Rax+9PWqIlUk4lkpAq5eEgcfa0TfZn5CB4dx
         1kOA==
X-Gm-Message-State: AOAM530L1y3kGJLKz9p0vYwd5Qs2+ezNr7gZmqDWpOGPLZXubO9OxQoT
	EGu92BE0HOhAOl62M/I8MoqSnuv4WNZ0mZDlzs+dhw==
X-Google-Smtp-Source: ABdhPJwPCK6JVvtPZA/qEwNUZFdTfKV6fNMlNE0y/mgV0d/FLXRv3yIuKlsLt0y/g/mEMvyfH8KcoRBGc9UjO+K2CWU=
X-Received: by 2002:a9d:58c7:: with SMTP id s7mr11139396oth.246.1643026886411;
 Mon, 24 Jan 2022 04:21:26 -0800 (PST)
MIME-Version: 1.0
References: <20220124025205.329752-1-liupeng256@huawei.com>
 <20220124025205.329752-4-liupeng256@huawei.com> <CANpmjNNYG=izN12sqaB3dYbGmM=2yQ8gK=8_BMHkuoaKWMmYPw@mail.gmail.com>
 <261a5287-af0d-424e-d209-db887d952a74@huawei.com>
In-Reply-To: <261a5287-af0d-424e-d209-db887d952a74@huawei.com>
From: Marco Elver <elver@google.com>
Date: Mon, 24 Jan 2022 13:21:15 +0100
Message-ID: <CANpmjNNc6F7tRVn=UqLaW0WAgTr67XFm=CUu5X2D0Xbt3nKXwA@mail.gmail.com>
To: "liupeng (DM)" <liupeng256@huawei.com>
X-MailFrom: elver@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: JDE7H3ZFAGCF7L6OPMNQZX2OKOZ377QV
X-Message-ID-Hash: JDE7H3ZFAGCF7L6OPMNQZX2OKOZ377QV
X-Mailman-Approved-At: Tue, 15 Feb 2022 07:38:52 +0000
CC: glider@google.com, dvyukov@google.com, corbet@lwn.net, christian.koenig@amd.com, akpm@linux-foundation.org, kasan-dev@googlegroups.com, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-mm@kvack.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 3/3] kfence: Make test case compatible with run time set sample interval
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/JDE7H3ZFAGCF7L6OPMNQZX2OKOZ377QV/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Mon, 24 Jan 2022 at 13:19, liupeng (DM) <liupeng256@huawei.com> wrote:
[...]
> When KFENCE pool size can be adjusted by boot parameters(assumption),
> automatically test and train KFENCE may be useful. So far, exporting
> kfence.sample_interval is not necessary.

I'm not opposed to the patch (I've also run into this issue, but not
too frequently) - feel free to just send it with EXPORT_SYMBOL_GPL.

Thanks,
-- Marco
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
