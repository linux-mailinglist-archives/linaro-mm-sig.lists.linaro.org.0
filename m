Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 53312758422
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 18 Jul 2023 20:06:39 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3AD6F43F22
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 18 Jul 2023 18:06:38 +0000 (UTC)
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
	by lists.linaro.org (Postfix) with ESMTPS id 468703F19D
	for <linaro-mm-sig@lists.linaro.org>; Tue, 18 Jul 2023 18:06:32 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ziepe.ca header.s=google header.b=groKThLK;
	spf=pass (lists.linaro.org: domain of jgg@ziepe.ca designates 209.85.214.174 as permitted sender) smtp.mailfrom=jgg@ziepe.ca;
	dmarc=none
Received: by mail-pl1-f174.google.com with SMTP id d9443c01a7336-1b9e9765f2cso35777895ad.3
        for <linaro-mm-sig@lists.linaro.org>; Tue, 18 Jul 2023 11:06:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1689703591; x=1692295591;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=nXz9xDxwT7BaavIhnCmafXwp3/aDUnwPYqui5jTbzSQ=;
        b=groKThLKhcGdvS7VGO7C4SDS0MFs8h/VRyqV+OQecO/1MgBAs/ZfpPKMHdEDFc18U6
         lL6E01mKA8UE5kLtpd7OED7gt7ztbJ5zG6ZR10SH2TRXOQQY1VxzoLfjSQ8X+8hvr7zc
         87zzsMTMDmeVha3PmXm/KENBZCBJR0whtZvmDjcbID28N6ghyDcrk5tXGBvdZgk2kE89
         c/ehnZ5oymDKSDagYvboYUn0sxTqAeqXz24JaL1wf81rDQDv/hEv3XN80y+jSOV2M/0E
         6T7xuWgJpH1NmtIjdE8p3/Mzy7HrBdkuTncvzIqpvybXisn6eFXd5MAeGA3KsBbF/NVQ
         x6YA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689703591; x=1692295591;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nXz9xDxwT7BaavIhnCmafXwp3/aDUnwPYqui5jTbzSQ=;
        b=bOut10F9cC6i7O5jvJtQoefA9e/TTRsz1K6V8aN5/9EZwUPTZ3sL2h1eSXgV0C3jDo
         tadxerD+T0I7RozgDVGw3Bajuuxe0XXz0qRa8ZN7twVqYcQBTsELgmhEXukP87gFcDP6
         uX+93FnbKw/1qs3+75LPA2ResFj1q4h3b6eGexDRsoz1LgzDZ1ahqnXV1rfm5DnJxvjH
         2OsaVAA032nftPIYgH30JatyWdlcFuS982Us6cxCDgGZ25dDvbEQoGneqv7kzpg+cr2V
         nsl+II1QmS2Q0/qZLn2DBCteQ6Uw6gXRzYkvTV6Yf1nSiBNyY9cDE+t/YUHxBgzX0JAi
         67UA==
X-Gm-Message-State: ABy/qLZOJNxeufaoRA+1CUNwlvb4tz+4oYlOTTpIgDJka45+UYmpsUEV
	gfqvp7dW71HjOe5iKJMCppn1NA==
X-Google-Smtp-Source: APBJJlF7FlQJHF3FMLrPPssG4qg4BrXeUhwWshlLKfnw7NuTDc181VYHZRzG6vsaH9PJ4JGKGoGO3g==
X-Received: by 2002:a17:902:c406:b0:1b9:e9b2:1288 with SMTP id k6-20020a170902c40600b001b9e9b21288mr530425plk.38.1689703591309;
        Tue, 18 Jul 2023 11:06:31 -0700 (PDT)
Received: from ziepe.ca ([206.223.160.26])
        by smtp.gmail.com with ESMTPSA id z10-20020a1709028f8a00b001b89c313185sm2171634plo.205.2023.07.18.11.06.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Jul 2023 11:06:30 -0700 (PDT)
Received: from jgg by wakko with local (Exim 4.95)
	(envelope-from <jgg@ziepe.ca>)
	id 1qLp5h-002aj7-9n;
	Tue, 18 Jul 2023 15:06:29 -0300
Date: Tue, 18 Jul 2023 15:06:29 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Mina Almasry <almasrymina@google.com>
Message-ID: <ZLbUpdNYvyvkD27P@ziepe.ca>
References: <20230710223304.1174642-1-almasrymina@google.com>
 <12393cd2-4b09-4956-fff0-93ef3929ee37@kernel.org>
 <CAHS8izNPTwtk+zN7XYt-+ycpT+47LMcRrYXYh=suTXCZQ6-rVQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHS8izNPTwtk+zN7XYt-+ycpT+47LMcRrYXYh=suTXCZQ6-rVQ@mail.gmail.com>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 468703F19D
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.09 / 15.00];
	BAYES_HAM(-2.99)[99.94%];
	SUSPICIOUS_RECIPS(1.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[ziepe.ca:s=google];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.214.174:from];
	MIME_GOOD(-0.10)[text/plain];
	FROM_HAS_DN(0.00)[];
	NEURAL_HAM(-0.00)[-0.997];
	RCPT_COUNT_TWELVE(0.00)[21];
	DKIM_TRACE(0.00)[ziepe.ca:+];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	TO_DN_SOME(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	ARC_NA(0.00)[];
	TAGGED_RCPT(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	FREEMAIL_CC(0.00)[kernel.org,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,linaro.org,amd.com,davemloft.net,google.com,redhat.com,arndb.de,gmail.com];
	DMARC_NA(0.00)[ziepe.ca];
	RCVD_VIA_SMTP_AUTH(0.00)[]
Message-ID-Hash: OMGZ55QVWBBHC3SG34Y5AMWGCZNGLZUK
X-Message-ID-Hash: OMGZ55QVWBBHC3SG34Y5AMWGCZNGLZUK
X-MailFrom: jgg@ziepe.ca
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Andy Lutomirski <luto@kernel.org>, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, netdev@vger.kernel.org, linux-arch@vger.kernel.org, linux-kselftest@vger.kernel.org, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Jesper Dangaard Brouer <hawk@kernel.org>, Ilias Apalodimas <ilias.apalodimas@linaro.org>, Arnd Bergmann <arnd@arndb.de>, David Ahern <dsahern@kernel.org>, Willem de Bruijn <willemdebruijn.kernel@gmail.com>, Shuah Khan <shuah@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC PATCH 00/10] Device Memory TCP
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/OMGZ55QVWBBHC3SG34Y5AMWGCZNGLZUK/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Tue, Jul 18, 2023 at 10:36:52AM -0700, Mina Almasry wrote:

> That is specific to this proposal, and will likely be very different
> in future ones. I thought the dma-buf pages approach was extensible
> and the uapi belonged somewhere in dma-buf. Clearly not. The next
> proposal, I think, will program the rxq via some net uapi and will
> take the dma-buf as input. Probably some netlink api (not sure if
> ethtool family or otherwise). I'm working out details of this
> non-paged networking first.

In practice you want the application to startup, get itself some 3/5
tuples and then request the kernel to setup the flow steering and
provision the NIC queues.

This is the right moment for the application to provide the backing
for the rx queue memory via a DMABUF handle.

Ideally this would all be accessible to non-priv applications as well,
so I think you'd want some kind of system call that sets all this up
and takes in a FD for the 3/5-tuple socket (to prove ownership over
the steering) and the DMABUF FD.

The queues and steering should exist only as long as the application
is still running (whatever that means). Otherwise you have a big mess
to clean up whenever anything crashes.

netlink feels like a weird API choice for that, in particular it would
be really wrong to somehow bind the lifecycle of a netlink object to a
process.

Further, if you are going to all the trouble of doing this, it seems
to me you should make it work with any kind of memory, including CPU
memory. Get a consistent approach to zero-copy TCP RX. So also allow a
memfd or similar to be passed in as the backing storage.

Jason
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
