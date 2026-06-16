Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id pkh6NUBEMWrefgUAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 16 Jun 2026 14:40:32 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AF2168F700
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 16 Jun 2026 14:40:32 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=ziepe.ca header.s=google header.b=gGFzhFOf;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=none
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 81B9540A72
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 16 Jun 2026 12:40:31 +0000 (UTC)
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com [209.85.160.181])
	by lists.linaro.org (Postfix) with ESMTPS id 32683401BA
	for <linaro-mm-sig@lists.linaro.org>; Tue, 16 Jun 2026 12:40:21 +0000 (UTC)
Received: by mail-qt1-f181.google.com with SMTP id d75a77b69052e-517b1f2c6adso43738791cf.2
        for <linaro-mm-sig@lists.linaro.org>; Tue, 16 Jun 2026 05:40:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1781613621; x=1782218421; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=tPbjX8dfzPLu8onhnfm0DNzfCkJoWXqGLy1Lxvc2NUs=;
        b=gGFzhFOfUlLaMrSv6cjJS3y8tq1zfYjaGFW2vmbOqo9de47Hl0ZJU3gp3hk3c2zTmp
         41Nzr/wWrEVaS7v3/CIVCPphsweKfHogkRHe25ALGvu0xsgRrw5m2EaJupBJhudoazIW
         4H1kVyBCrt3YSntYsnBhwnneI3d7i9pRLcIE1m7yTTrAYAJQqEXateEHgEQaabKxYkgA
         WuorD5QAiH/vVv8pjPPrGYzDvighWBj+xhp7upn8lOls1gAqLQLAmyds0DMrZ2boNcsh
         29rxO/JN4B6pG0aq8B0So14Sgt6BehHE28SR3XXhJMlgv6Z4voNONfd3kjR16YIq0zF1
         sxUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781613621; x=1782218421;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tPbjX8dfzPLu8onhnfm0DNzfCkJoWXqGLy1Lxvc2NUs=;
        b=iGSQlAUVk/z2FH54ujFqg8NlEyuvcKjdcVVH6HUWK8czMTTNxYxsTqgQvRsW72kAUI
         PMS6j7ODM1uFBJ71Cn9tsrSb9stcAVT2JYsz6YRlcdZk6McwpzYBuzFMWK5gtdTxROwY
         e7cAfDE3vk6E91R9aDpAe5JgjfSwTtFnXLt364P/cgQ2eBaVqWg3RQT18CGxZ9dBYkln
         uXqZ2mUU8sH4wR+TKUHjiYyNNmRPi3nsJAdXsWkgt4SjVNFyfbQONV2Pgvwjn3WtwSZV
         bm9IKO+ZJ7sUdHT08xPwpamdfLyjbRVtg2tcWGsBprlDWqb1rb3fd++aej7iYfHTj9WL
         f08g==
X-Forwarded-Encrypted: i=1; AFNElJ9Ct7p/+5mZP/K2ZACeDe814PKV2siGRCfAxNObmIiIA64WHirCOSszBRARkNtk2Ql44whOBbUTJTNWFpWy@lists.linaro.org
X-Gm-Message-State: AOJu0YwB1n7cofEr1tbK79409iLqlPW9jf+xLnnhKeiF3XjXxRTjYyKM
	j08BifALvPYamyXio2+RsAL0qkk0sqJTTr6KgkzJClB/d7WBHpRb3aD0bZS9qiolf9Y=
X-Gm-Gg: Acq92OGi6CnLs1dIEPdf8iM3J32V4aAEo+NnvYnA2TzcQ0+4vwdWTtTNU/N4f+GZaWT
	Zx0B6PiSPd5Lk+NDzkZWwfewbB6h2+USh6SwUVlACd2x1ZzOBq1vx3/12wbqcS39r5zsMf5Zv9U
	VYo55ig2mJM9GtyCd3mMDYvX08O5kG0c3aLmStEmTyxxnjIxMsmrC5Ta+sAh7xNDuQDnI5cIVt5
	0FgCMAIeS7iExKh+7iXfyNqUKZfboztqXRv1uDt8gS3RHB4USnz4z6NszHseGdOEEh4YyqK1FVA
	3DDRcatphDmGKpUnVs3FXdTnySJN5F04Ox/G/0ZCMARnuENhxxtD9zbQ1O+Bty8ZG4lF5BJ/xU9
	7Kxm6eF08z+oBEatn+rrl7HsA+yrZN/v7uyB/7sjdDJTR4oszJC3YUpbCSnC3W1D0mii8kHiuhY
	zxXhO9nW4wOWJlhUKSOPC6NVgYJcpTRZkEflz7ECDYqJEqStqAQp5sfYCmQjJ0dI/y3ofC30pki
	Rzlfw==
X-Received: by 2002:a05:622a:2282:b0:517:6804:1fb3 with SMTP id d75a77b69052e-517fe230d82mr282972431cf.18.1781613620607;
        Tue, 16 Jun 2026 05:40:20 -0700 (PDT)
Received: from ziepe.ca (crbknf0213w-47-54-130-67.pppoe-dynamic.high-speed.nl.bellaliant.net. [47.54.130.67])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-517fb61d948sm133785221cf.1.2026.06.16.05.40.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Jun 2026 05:40:19 -0700 (PDT)
Received: from jgg by wakko with local (Exim 4.97)
	(envelope-from <jgg@ziepe.ca>)
	id 1wZT5X-0000000Fzb5-0uZr;
	Tue, 16 Jun 2026 09:40:19 -0300
Date: Tue, 16 Jun 2026 09:40:19 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: "Kasireddy, Vivek" <vivek.kasireddy@intel.com>
Message-ID: <20260616124019.GA3577091@ziepe.ca>
References: <20260611-tcpdm-large-niovs-v2-0-ee2bf15e7523@meta.com>
 <20260611-tcpdm-large-niovs-v2-2-ee2bf15e7523@meta.com>
 <IA0PR11MB71852246277F773AC41DAAA3F8E52@IA0PR11MB7185.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <IA0PR11MB71852246277F773AC41DAAA3F8E52@IA0PR11MB7185.namprd11.prod.outlook.com>
X-Spamd-Bar: ---
Message-ID-Hash: 3C3GOOSQGBMD3E2D7DVZTOJWR3RMKSBR
X-Message-ID-Hash: 3C3GOOSQGBMD3E2D7DVZTOJWR3RMKSBR
X-MailFrom: jgg@ziepe.ca
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Bobby Eshleman <bobbyeshleman@gmail.com>, Donald Hunter <donald.hunter@gmail.com>, Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>, Andrew Lunn <andrew+netdev@lunn.ch>, Gerd Hoffmann <kraxel@redhat.com>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, Shuah Khan <shuah@kernel.org>, "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>, "linux-kselftest@vger.kernel.org" <linux-kselftest@vger.kernel.org>, "sdf@fomichev.me" <sdf@fomichev.me>, "razor@blackwall.org" <razor@blackwall.org>, "daniel@iogearbox.net" <daniel@iogearbox.net>, "almasrymina@google.com
 " <almasrymina@google.com>, "matttbe@kernel.org" <matttbe@kernel.org>, "skhawaja@google.com" <skhawaja@google.com>, "dw@davidwei.uk" <dw@davidwei.uk>, Bobby Eshleman <bobbyeshleman@meta.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH net-next v2 2/4] udmabuf: emit one sg entry per pinned folio
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/3C3GOOSQGBMD3E2D7DVZTOJWR3RMKSBR/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.99 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[ziepe.ca:s=google];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	DMARC_NA(0.00)[ziepe.ca];
	FORGED_RECIPIENTS(0.00)[m:vivek.kasireddy@intel.com,m:bobbyeshleman@gmail.com,m:donald.hunter@gmail.com,m:kuba@kernel.org,m:davem@davemloft.net,m:edumazet@google.com,m:pabeni@redhat.com,m:horms@kernel.org,m:andrew+netdev@lunn.ch,m:kraxel@redhat.com,m:sumit.semwal@linaro.org,m:christian.koenig@amd.com,m:shuah@kernel.org,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linux-media@vger.kernel.org,m:linaro-mm-sig@lists.linaro.org,m:linux-kselftest@vger.kernel.org,m:sdf@fomichev.me,m:razor@blackwall.org,m:daniel@iogearbox.net,m:almasrymina@google.com,m:matttbe@kernel.org,m:skhawaja@google.com,m:dw@davidwei.uk,m:bobbyeshleman@meta.com,m:donaldhunter@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[jgg@ziepe.ca,linaro-mm-sig-bounces@lists.linaro.org];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[27];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,davemloft.net,google.com,redhat.com,lunn.ch,linaro.org,amd.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,fomichev.me,blackwall.org,iogearbox.net,davidwei.uk,meta.com];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	DKIM_TRACE(0.00)[ziepe.ca:-];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jgg@ziepe.ca,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig,netdev];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ziepe.ca:mid,ziepe.ca:from_mime,linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6AF2168F700

On Tue, Jun 16, 2026 at 06:04:03AM +0000, Kasireddy, Vivek wrote:

> > This is helpful for importers like net/core/devmem that expect dmabuf sg
> IMO, udmabuf needs to detect whether importers can handle segments that
> are > PAGE_SIZE and set the entries appropriately. Please look into how the
> GPU drivers and other dmabuf exporters/importers handle this situation, so
> that we can adopt best practices to address this issue.

Importers have to handle arbitary scatterlists, devmem is just broken
if it can't handle the output of sg_alloc_table_from_pages().

Jason
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
