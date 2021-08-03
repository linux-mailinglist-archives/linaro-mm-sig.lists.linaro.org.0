Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id BA2CB3DE44D
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  3 Aug 2021 04:18:32 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 06BBA66050
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  3 Aug 2021 02:18:31 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id EDC6C66008; Tue,  3 Aug 2021 02:18:29 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AE02560B43;
	Tue,  3 Aug 2021 02:18:26 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id BF2F460AC6
 for <linaro-mm-sig@lists.linaro.org>; Tue,  3 Aug 2021 02:18:24 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id BCDD060B43; Tue,  3 Aug 2021 02:18:24 +0000 (UTC)
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com
 [209.85.167.51])
 by lists.linaro.org (Postfix) with ESMTPS id B580460AC6
 for <linaro-mm-sig@lists.linaro.org>; Tue,  3 Aug 2021 02:18:22 +0000 (UTC)
Received: by mail-lf1-f51.google.com with SMTP id a26so37095451lfr.11
 for <linaro-mm-sig@lists.linaro.org>; Mon, 02 Aug 2021 19:18:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=p0Rg8uoQAdCMqNvWG4KJ4Lml0OYquOl0PzeY+NghgIs=;
 b=rJeSRXesNgqD/ctsEcHci3GJIr+ZkXbWSPIKY0cGUASov47tyDQAO5lBimd0asmIsL
 +4rmPRHpsXvlmc0U/W2TuK9bg1MhTeOs7bo8xF8pbSMAURvWUezdYoi0kluk8bQwRucC
 sVI0o4Nkcozxs0qQcniS007Mw17HutvMJYPWo5XFmdPmurdTI4nsoUb6cEW5QHA4gsJ4
 MY2BCxRTcVYUddEibbqdE6MT3YsNNPvMNUJ4G0z+qJSPoRFIEO4PXKaGHgQ81CJhLojN
 HoAJQ0Sf6F0cfaImhnZg544kzLmUxPDV3XS8Ilm6pjvOYyzbU5onvpQy6uTTI+FiM5Jk
 1R8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=p0Rg8uoQAdCMqNvWG4KJ4Lml0OYquOl0PzeY+NghgIs=;
 b=je4SEelur7evJIaEr9oSLNcrkta0LFL44u2f2/sMQ80B6Qa+qXNE/BB60H81N/603J
 dnNP6W24MA3AeIVtVQiS9b2+JGogguC9SO9YIDNyvrP2lYSpopV3ePYsol+OXaUSDTSI
 iuxvbPVRCgtjV6sjWMFI1Ip0YpFDzYxD8CFTGUOaYADlK2W8VRyENco2BneH/HjthbiU
 XVq6R2rniGDUWPUPxQt9TeyQAaWkEukoUJehXQ1+C0ZG47uxL1U2xzK4jPyqo7wLQ7RZ
 RueHGq6lqEeC8LvCFuSV9GmdD0Cv0l8rRmdtzmlBDf5TSZVxb/CXYOS0RwTkkUPSkV7Y
 bKdA==
X-Gm-Message-State: AOAM530YQbM5arvYfe4AFp/qzRc/KtkeBB4ueihPCYgfgaAmAC8XpkNN
 RDEZRFsLxg1beqJAxB9G9wecYuPc+JrTDzpsa/cv0Un2
X-Google-Smtp-Source: ABdhPJwB8Bh43O7mdPYun1vDdLefZZTbI63nsPtzVedjyUVpk4FUL0NZ+QI6+2qAksUHe2ZBeqUpGQ1yETx3aQ9XVsw=
X-Received: by 2002:a19:c10a:: with SMTP id r10mr14608548lff.508.1627957101180; 
 Mon, 02 Aug 2021 19:18:21 -0700 (PDT)
MIME-Version: 1.0
References: <20210722190747.1986614-1-hridya@google.com>
In-Reply-To: <20210722190747.1986614-1-hridya@google.com>
From: John Stultz <john.stultz@linaro.org>
Date: Mon, 2 Aug 2021 19:18:09 -0700
Message-ID: <CALAqxLVLMt7rbJBQtFBw-ikBAjKrVgfS8=Nu6NFQbp_gq1m22Q@mail.gmail.com>
To: Hridya Valsaraju <hridya@google.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH] dma-buf: heaps: Set allocation limit
 for system heap
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: "Unified memory management interest group."
 <linaro-mm-sig.lists.linaro.org>
List-Unsubscribe: <https://lists.linaro.org/mailman/options/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=unsubscribe>
List-Archive: <http://lists.linaro.org/pipermail/linaro-mm-sig/>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Subscribe: <https://lists.linaro.org/mailman/listinfo/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=subscribe>
Cc: Brian Starkey <Brian.Starkey@arm.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 lkml <linux-kernel@vger.kernel.org>, Liam Mark <lmark@codeaurora.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Laura Abbott <labbott@redhat.com>,
 Android Kernel Team <kernel-team@android.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 linux-media <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

On Thu, Jul 22, 2021 at 12:07 PM Hridya Valsaraju <hridya@google.com> wrote:
> This patch limits the size of total memory that can be requested in a
> single allocation from the system heap. This would prevent a
> buggy/malicious client from depleting system memory by requesting for an
> extremely large allocation which might destabilize the system.
>
> The limit is set to half the size of the device's total RAM which is the
> same as what was set by the deprecated ION system heap.
>
> Signed-off-by: Hridya Valsaraju <hridya@google.com>

Seems sane to me, unless folks have better suggestions for allocation limits.

Reviewed-by: John Stultz <john.stultz@linaro.org>

thanks
-john
_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig
