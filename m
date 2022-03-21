Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id D77034EBEF7
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 30 Mar 2022 12:39:45 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 138983EC29
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 30 Mar 2022 10:39:45 +0000 (UTC)
Received: from smtp-out2.suse.de (smtp-out2.suse.de [195.135.220.29])
	by lists.linaro.org (Postfix) with ESMTPS id 81F133EF87
	for <linaro-mm-sig@lists.linaro.org>; Mon, 21 Mar 2022 17:37:30 +0000 (UTC)
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
	(No client certificate requested)
	by smtp-out2.suse.de (Postfix) with ESMTPS id 58BE31F37C;
	Mon, 21 Mar 2022 17:37:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.com; s=susede1;
	t=1647884249; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=FG/voD+DgWXmOAGe303ur6CUB56T56c8MHMtIMwufHs=;
	b=ZV6x/1DC0p7tuAxJI2DaKbablWASdPnbFE2nSJ1RXrHZQUwroTi8Q9KwCCRyacn1+ZPueP
	WYBKzbNFNFkbpPdhbqmW+fj0+PZUyLxxW1U2kg7YsSnKmIuBWqSzYB8C8wLxVo90H+4Ss2
	SbJDDHjvSS09x+Abxn2HnFk0v+cBHag=
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
	(No client certificate requested)
	by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id 48CC2139DB;
	Mon, 21 Mar 2022 17:37:28 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
	by imap2.suse-dmz.suse.de with ESMTPSA
	id gmh6ENi3OGL9TQAAMHmgww
	(envelope-from <mkoutny@suse.com>); Mon, 21 Mar 2022 17:37:28 +0000
Date: Mon, 21 Mar 2022 18:37:26 +0100
From: Michal =?iso-8859-1?Q?Koutn=FD?= <mkoutny@suse.com>
To: "T.J. Mercier" <tjmercier@google.com>
Message-ID: <20220321173726.GA9640@blackbody.suse.cz>
References: <20220309165222.2843651-1-tjmercier@google.com>
 <20220309165222.2843651-2-tjmercier@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220309165222.2843651-2-tjmercier@google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-MailFrom: mkoutny@suse.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: AFF4KEJLQHA3RLPWY5HBGLS2YQ44PQQ6
X-Message-ID-Hash: AFF4KEJLQHA3RLPWY5HBGLS2YQ44PQQ6
X-Mailman-Approved-At: Wed, 30 Mar 2022 10:39:42 +0000
CC: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, Jonathan Corbet <corbet@lwn.net>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Arve =?iso-8859-1?B?SGr4bm5lduVn?= <arve@android.com>, Todd Kjos <tkjos@android.com>, Martijn Coenen <maco@android.com>, Joel Fernandes <joel@joelfernandes.org>, Christian Brauner <brauner@kernel.org>, Hridya Valsaraju <hridya@google.com>, Suren Baghdasaryan <surenb@google.com>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Benjamin Gaignard <benjamin.gaignard@linaro.org>, Liam Mark <lmark@codeaurora.org>, Laura Abbott <labbott@redhat.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <john.stultz@linaro.org>, Tejun Heo <tj@kernel.org>, Zefan Li <lizefan.x@bytedance.com>, Johannes Weiner <hannes@cmpxchg.org>, Shuah Khan <shuah@kernel.org>, kaleshsingh@google.com, Kenny.Ho@amd.com, 
 dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, cgroups@vger.kernel.org, linux-kselftest@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC v3 1/8] gpu: rfc: Proposal for a GPU cgroup controller
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/AFF4KEJLQHA3RLPWY5HBGLS2YQ44PQQ6/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello.

On Wed, Mar 09, 2022 at 04:52:11PM +0000, "T.J. Mercier" <tjmercier@google.=
com> wrote:
> +The new cgroup controller would:
> +
> +* Allow setting per-cgroup limits on the total size of buffers charged t=
o it.

What is the meaning of the total? (I only have very na=EFve
understanding of the device buffers.)

Is it like a) there's global pool of memory that is partitioned among
individual devices or b) each device has its own specific type of memory
and adding across two devices is adding apples and oranges or c) there
can be various devices both of a) and b) type?

(Apologies not replying to previous versions and possibly missing
anything.)

Thanks,
Michal

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
