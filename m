Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 652F54EBF00
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 30 Mar 2022 12:40:14 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 94EEA3EC55
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 30 Mar 2022 10:40:13 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id 495A53EA22
	for <linaro-mm-sig@lists.linaro.org>; Tue, 22 Mar 2022 16:07:22 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id B0A2E612CC;
	Tue, 22 Mar 2022 16:07:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CBD3BC340F2;
	Tue, 22 Mar 2022 16:07:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1647965240;
	bh=uSOOq0K0AgKLPEeuKOwHFh4OYgLE2Hvt3voMGhHzT6o=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=fQPHI71f0BUCbQYIhPaRBwike/7mbu7HfbqKAyTZyeXxvTFSZBW8OJHw75FyNjjct
	 TkJ06nuufpzYFl30PfmHHBsdFoAVO/Rx0Py/EjuoAKDdpB/pe2RWuS3m6aOIijxKqc
	 4QUbiO92sHlJvwFEXOPCHmImzlFcOAhg54Q+11qL1v3uqtjpAMaTzXM5VBvwNrUQaM
	 0pDSwIOEuTE6bHlxoGYzBa9s329CV9bgmt8q09zcbRbyvOe2RQxTg2mokYrSjoByFw
	 q9ZWxV41RiPsyAX4zQlvXxD0pIV62dPOK62WraDz62dbu/RjKCEGPO0AZga3dK4b2/
	 RdPvbVQNl8fyQ==
Date: Tue, 22 Mar 2022 17:07:09 +0100
From: Christian Brauner <brauner@kernel.org>
To: Todd Kjos <tkjos@google.com>
Message-ID: <20220322160709.rcbjgqdoar7lvbox@wittgenstein>
References: <20220309165222.2843651-1-tjmercier@google.com>
 <20220309165222.2843651-9-tjmercier@google.com>
 <CAHRSSEwN4Xuo2vLt8d2QfJbNOK21VB7_NjjbO_XGDz6pYUaXZg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHRSSEwN4Xuo2vLt8d2QfJbNOK21VB7_NjjbO_XGDz6pYUaXZg@mail.gmail.com>
X-MailFrom: brauner@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 6GHQOXVIUZCHS5ZX7OA5OLTJRMHZ545X
X-Message-ID-Hash: 6GHQOXVIUZCHS5ZX7OA5OLTJRMHZ545X
X-Mailman-Approved-At: Wed, 30 Mar 2022 10:39:55 +0000
CC: "T.J. Mercier" <tjmercier@google.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, Jonathan Corbet <corbet@lwn.net>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Arve =?utf-8?B?SGrDuG5uZXbDpWc=?= <arve@android.com>, Todd Kjos <tkjos@android.com>, Martijn Coenen <maco@android.com>, Joel Fernandes <joel@joelfernandes.org>, Hridya Valsaraju <hridya@google.com>, Suren Baghdasaryan <surenb@google.com>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, Benjamin Gaignard <benjamin.gaignard@linaro.org>, Liam Mark <lmark@codeaurora.org>, Laura Abbott <labbott@redhat.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <john.stultz@linaro.org>, Tejun Heo <tj@kernel.org>, Zefan Li <lizefan.x@bytedance.com>, Johannes Weiner <hannes@cmpxchg.org>, Shuah Khan <shuah@kernel.org>, kaleshsingh@google.com, Kenny.Ho@amd.com, dri-de
 vel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, cgroups@vger.kernel.org, linux-kselftest@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC v3 8/8] selftests: Add binder cgroup gpu memory transfer test
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/6GHQOXVIUZCHS5ZX7OA5OLTJRMHZ545X/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Mon, Mar 14, 2022 at 05:43:40PM -0700, Todd Kjos wrote:
> On Wed, Mar 9, 2022 at 8:53 AM T.J. Mercier <tjmercier@google.com> wrote:
> >
> > This test verifies that the cgroup GPU memory charge is transferred
> > correctly when a dmabuf is passed between processes in two different
> > cgroups and the sender specifies BINDER_BUFFER_FLAG_SENDER_NO_NEED in the
> > binder transaction data containing the dmabuf file descriptor.
> >
> > Signed-off-by: T.J. Mercier <tjmercier@google.com>
> 
> Reviewed-by: Todd Kjos <tkjos@google.com>
> for the binder driver interactions. Need Christian to take a look at
> the binderfs interactions.

Sorry, just saw this now. I'll take a look tomorrow!
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
