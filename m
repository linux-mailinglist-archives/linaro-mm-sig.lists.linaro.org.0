Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FF70604DC4
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Oct 2022 18:51:31 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 12FCC3EF53
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Oct 2022 16:51:30 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id 3B55748A25
	for <linaro-mm-sig@lists.linaro.org>; Thu, 22 Sep 2022 04:19:05 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id B54286338F;
	Thu, 22 Sep 2022 04:19:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4C3BEC433D6;
	Thu, 22 Sep 2022 04:18:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663820344;
	bh=8xodEWMTndBecZO1JG0sANGtdcIZJhdCKz1ZoOkxjMk=;
	h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
	b=uW+exXsXSGrew87ZojaTnnu2Pv1UtGXzQqjjLX2b7oGph4+PQelJUJX11FgjpqatQ
	 ELoqv5pR8bSV3/7535PDpBw6BVY4bi59s4BaKlJSIYVXzNRY6aDLmLKhJLPFtzieTO
	 iB7297vU052/FKz0Dc21FYTixE1ykO1VrtaDUUK3SkYuK3biSXS0J7OKhhQjo/eWra
	 7mj2sPUPAmfSHWCc1MV6VYkGtcRnMWzr/LNBb6lPibVdaMWLqUzHsztksp0W4hjZYv
	 zIN6846mujkb0CwMdnKoomN+OWU5pYCeMqp4QWw7CJvtecSieKja+ya7GWiRyAj90B
	 2nqT/vaz2aB1w==
From: Kalle Valo <kvalo@kernel.org>
To: Kees Cook <keescook@chromium.org>
References: <20220922031013.2150682-1-keescook@chromium.org>
	<20220922031013.2150682-11-keescook@chromium.org>
Date: Thu, 22 Sep 2022 07:18:51 +0300
In-Reply-To: <20220922031013.2150682-11-keescook@chromium.org> (Kees Cook's
	message of "Wed, 21 Sep 2022 20:10:11 -0700")
Message-ID: <87fsgk6nys.fsf@kernel.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
X-MailFrom: kvalo@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: AIF3DMGF73TX2VIYLKQDATGX6W5A2XFK
X-Message-ID-Hash: AIF3DMGF73TX2VIYLKQDATGX6W5A2XFK
X-Mailman-Approved-At: Wed, 19 Oct 2022 16:51:14 +0000
CC: Vlastimil Babka <vbabka@suse.cz>, Gregory Greenman <gregory.greenman@intel.com>, Johannes Berg <johannes.berg@intel.com>, linux-wireless@vger.kernel.org, netdev@vger.kernel.org, Pekka Enberg <penberg@kernel.org>, David Rientjes <rientjes@google.com>, Joonsoo Kim <iamjoonsoo.kim@lge.com>, Andrew Morton <akpm@linux-foundation.org>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Nick Desaulniers <ndesaulniers@google.com>, Alex Elder <elder@kernel.org>, Josef Bacik <josef@toxicpanda.com>, David Sterba <dsterba@suse.com>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?utf-8?Q?K=C3=B6nig?= <christian.koenig@amd.com>, Jesse Brandeburg <jesse.brandeburg@intel.com>, Daniel Micay <danielmicay@gmail.com>, Yonghong Song <yhs@fb.com>, Marco Elver <elver@google.com>, Miguel Ojeda <ojeda@kernel.org>, Jacob Shin <jacob.shin@amd.com>, linux-kernel@
 vger.kernel.org, linux-mm@kvack.org, linux-btrfs@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-fsdevel@vger.kernel.org, intel-wired-lan@lists.osuosl.org, dev@openvswitch.org, x86@kernel.org, llvm@lists.linux.dev, linux-hardening@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 10/12] iwlwifi: Track scan_cmd allocation size explicitly
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/AIF3DMGF73TX2VIYLKQDATGX6W5A2XFK/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Kees Cook <keescook@chromium.org> writes:

> In preparation for reducing the use of ksize(), explicitly track the
> size of scan_cmd allocations. This also allows for noticing if the scan
> size changes unexpectedly. Note that using ksize() was already incorrect
> here, in the sense that ksize() would not match the actual allocation
> size, which would trigger future run-time allocation bounds checking.
> (In other words, memset() may know how large scan_cmd was allocated for,
> but ksize() will return the upper bounds of the actually allocated memory,
> causing a run-time warning about an overflow.)
>
> Cc: Gregory Greenman <gregory.greenman@intel.com>
> Cc: Kalle Valo <kvalo@kernel.org>
> Cc: Johannes Berg <johannes.berg@intel.com>
> Cc: linux-wireless@vger.kernel.org
> Cc: netdev@vger.kernel.org
> Signed-off-by: Kees Cook <keescook@chromium.org>

Via which tree is this iwlwifi patch going? Normally via wireless-next
or something else?

-- 
https://patchwork.kernel.org/project/linux-wireless/list/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
