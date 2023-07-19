Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 83F1F75A2CF
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 20 Jul 2023 01:25:04 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 97F8D41208
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Jul 2023 23:25:03 +0000 (UTC)
Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com [209.85.210.171])
	by lists.linaro.org (Postfix) with ESMTPS id E16ED3E925
	for <linaro-mm-sig@lists.linaro.org>; Wed, 19 Jul 2023 23:24:54 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ziepe.ca header.s=google header.b=RitoPG5v;
	spf=pass (lists.linaro.org: domain of jgg@ziepe.ca designates 209.85.210.171 as permitted sender) smtp.mailfrom=jgg@ziepe.ca;
	dmarc=none
Received: by mail-pf1-f171.google.com with SMTP id d2e1a72fcca58-6686c74183cso134573b3a.1
        for <linaro-mm-sig@lists.linaro.org>; Wed, 19 Jul 2023 16:24:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1689809094; x=1690413894;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=QMBXWfDTfMeBEXpKpdrCux7UOxDUWWDJl0r9KLthi7I=;
        b=RitoPG5vg2KH92ckG+V7d8L8L9W7M1MBD8JemTd7YYR3fTJrTOVFYtqqXzUnBKMuir
         5mWALTL5KmWaQJU0sCdTf1pDvm6hLmYvUeYrkwPsO1SZCFet8sGivcjzWo2/jJSQ+69r
         tWFF5/07XRl/q/8uN+rCYjwQhkZBkDDkJmR7gbwa/MDL9f0w0sZGSvooJmm5Ax+0ioy1
         H/sOq8DkuI4B9Gm5OL3DqroseeCwVW7yCWj9quaQcgXz/+7NKt05sQF+GJ9/12jWPXZ6
         8j+EKQKrYcWo0PuWQibJD8tsH5yifa7BtFwNC8Ufe7awQAN0xt48aMlwNrlWN/lcUSoO
         93QA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689809094; x=1690413894;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QMBXWfDTfMeBEXpKpdrCux7UOxDUWWDJl0r9KLthi7I=;
        b=iPsePPeaxOKoXwzJSS2cmZLbX3M0HAr+eFAUy4G5DUY6HWmILZVKUQ6Y0nNVCWOumz
         lv5wadbqLxxGzdHW3HZx8kWkQx2LwoVFULzpUxFqxgqepEPJ4rFGNAHFx6P1nTlDWSi4
         f3+TtA1XHTTjRhrXKOMWqML5smRtyUuXvRZvxLpkIKV9qDpfdWMCfXOPq5iocLVrTZUt
         Dq0CzsRyHdKTm5gCEhd+HwZbyKJLY+GoQKC3LgSZFv8Me+uwh9UEzLXiV0LN0cPhUXwv
         OVIKjYhB7LyKbn4divHt5V+d+r6g6jZo2leTOaVN9DZ1sG/Gx5mPMDiVcxMGWCCWQ6f6
         LQcA==
X-Gm-Message-State: ABy/qLYl737zc2PbPYwgOVme4aZtdSFsA+VvnCSMQOiNCi4o/TbxwYPR
	Ys5vbpF6MAbEUg7e/jgdQicGIA==
X-Google-Smtp-Source: APBJJlF1RVY7gVrV+x6J0pGqg/vEpRGAJ3WpkIaplw7rwOALVicAHlHdlSUsDv1w5+4aog7vtr7zhQ==
X-Received: by 2002:a05:6a20:840b:b0:126:a80d:4960 with SMTP id c11-20020a056a20840b00b00126a80d4960mr28216893pzd.30.1689809094040;
        Wed, 19 Jul 2023 16:24:54 -0700 (PDT)
Received: from ziepe.ca ([206.223.160.26])
        by smtp.gmail.com with ESMTPSA id g23-20020aa78757000000b0067a1f4f4f7dsm3780558pfo.169.2023.07.19.16.24.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Jul 2023 16:24:53 -0700 (PDT)
Received: from jgg by wakko with local (Exim 4.95)
	(envelope-from <jgg@ziepe.ca>)
	id 1qMGXL-002tBd-Tt;
	Wed, 19 Jul 2023 20:24:51 -0300
Date: Wed, 19 Jul 2023 20:24:51 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Stephen Hemminger <stephen@networkplumber.org>
Message-ID: <ZLhww+P+7zhTTUk7@ziepe.ca>
References: <12393cd2-4b09-4956-fff0-93ef3929ee37@kernel.org>
 <CAHS8izNPTwtk+zN7XYt-+ycpT+47LMcRrYXYh=suTXCZQ6-rVQ@mail.gmail.com>
 <ZLbUpdNYvyvkD27P@ziepe.ca>
 <20230718111508.6f0b9a83@kernel.org>
 <35f3ec37-11fe-19c8-9d6f-ae5a789843cb@kernel.org>
 <20230718112940.2c126677@kernel.org>
 <eb34f812-a866-a1a3-9f9b-7d5054d17609@kernel.org>
 <20230718154503.0421b4cd@kernel.org>
 <CAHS8izPORN=r2-hzYSgN4s_Aoo2dnwoJXrU5Hu=43sb8zsWyhQ@mail.gmail.com>
 <20230719105711.448f8cad@hermes.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230719105711.448f8cad@hermes.local>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: E16ED3E925
X-Spamd-Bar: -
X-Spamd-Result: default: False [-2.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_ALLOW(-0.20)[ziepe.ca:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_TWELVE(0.00)[22];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[google.com,kernel.org,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,linaro.org,amd.com,davemloft.net,redhat.com,arndb.de,gmail.com];
	BLOCKLISTDE_FAIL(0.00)[206.223.160.26:server fail,209.85.210.171:server fail];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[ziepe.ca:+];
	RCVD_COUNT_THREE(0.00)[3];
	DMARC_NA(0.00)[ziepe.ca];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_NA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.210.171:from]
Message-ID-Hash: 6VFVWNO52SLA6SZKC3QMSDHD7JM5NGA2
X-Message-ID-Hash: 6VFVWNO52SLA6SZKC3QMSDHD7JM5NGA2
X-MailFrom: jgg@ziepe.ca
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Mina Almasry <almasrymina@google.com>, Jakub Kicinski <kuba@kernel.org>, David Ahern <dsahern@kernel.org>, Andy Lutomirski <luto@kernel.org>, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, netdev@vger.kernel.org, linux-arch@vger.kernel.org, linux-kselftest@vger.kernel.org, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Jesper Dangaard Brouer <hawk@kernel.org>, Ilias Apalodimas <ilias.apalodimas@linaro.org>, Arnd Bergmann <arnd@arndb.de>, Willem de Bruijn <willemdebruijn.kernel@gmail.com>, Shuah Khan <shuah@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC PATCH 00/10] Device Memory TCP
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/6VFVWNO52SLA6SZKC3QMSDHD7JM5NGA2/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Wed, Jul 19, 2023 at 10:57:11AM -0700, Stephen Hemminger wrote:

> Naive idea.
> Would it be possible for process to use mmap() on the GPU memory and then
> do zero copy TCP receive some how? Or is this what is being proposed.

It could be possible, but currently there is no API to recover the
underlying dmabuf from the VMA backing the mmap.

Also you can't just take arbitary struct pages from any old VMA and
make them "netmem"

Jason
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
