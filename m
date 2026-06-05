Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id EEWWJOlJKWoiTwMAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2026 13:26:33 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 428A5668C4F
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2026 13:26:33 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=gmail.com header.s=20251104 header.b=jtb9Ab52;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=gmail.com (policy=none)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 59BD840A2D
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2026 11:26:32 +0000 (UTC)
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
	by lists.linaro.org (Postfix) with ESMTPS id 0AEEB409EA
	for <linaro-mm-sig@lists.linaro.org>; Fri,  5 Jun 2026 16:56:49 +0000 (UTC)
Received: by mail-pl1-f171.google.com with SMTP id d9443c01a7336-2c0bb4a94b8so18330075ad.2
        for <linaro-mm-sig@lists.linaro.org>; Fri, 05 Jun 2026 09:56:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780678608; x=1781283408; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=07Z9+e3inJcySCaf9Ls4BTaFTWY0Pppf5c+tjALyKsk=;
        b=jtb9Ab52VH3vFWefm29sURlaUZf8ya+YLxEhKdzZQ4AvURR7f5X1B5d+5GBNy4hPdt
         DFUOZsJkHp7dkDRjpUnzThyx9SwkZ2buw9sHDiqtgW/SvecAvnC85mJyjY7zwSr/mu9A
         WZalQ259ICt+x9ZLMBchQmADwMeLqviOvw8HIMw21QV3pQxKEXirtKSIKNAdnPM9fX4w
         70m7Ei5N2a81UBsJhoxJ4YipBaXsWRgBfO5wtb2JgRBz9r2c2LZGxFaS/dHwkhQ5vAa1
         Yppyq7vj19kb2bX+h9xW3T33wb7uZVD1ettb5wj6LRgye1y+RTbAIRO+PB4pr1UelbDf
         JdfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780678608; x=1781283408;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=07Z9+e3inJcySCaf9Ls4BTaFTWY0Pppf5c+tjALyKsk=;
        b=OabYKFO2h8wJztUOYuiA9o5I5V3QZxs5jiJk0wkuAzl9QThxS/uepS6BWsfIcqD4/E
         ARtzz93i6RhdWD7geO1WNtnn2egjA7dcpZzZghSQLswPufqy9xKKBicLRSOZd+Zgi7jK
         czR9gZU0gT/ftHn9+Wc+ewjw2TytkXqDKgK5QC2AAJGk4bqwugnNnQX0/ZGWmhRrKHF3
         XbbpH3JGWzxMF2viLSrNUEgI5XsiSsP2NGXU/2Dt3J9NjQc2GMQePGvEuS8gU6bC4Zix
         9yycXU2qCtRIzUPdtiJH7tijE5A7VNYLSsd7DKKd4l83ssmHlzTZtwog0JcXDfs7R+kt
         RUOg==
X-Forwarded-Encrypted: i=1; AFNElJ/kGcQSaHM4VS0lwYSAN46EfXwP4zv6327AMMe7y4Ryigu8biGxY/rrEU0W7E6CCAFxZpcZRLobz0Yx6drK@lists.linaro.org
X-Gm-Message-State: AOJu0YyjUqabHMXlJqfA/6SH5LUmSK0EOP5V5E/SmuKg6sdQQFZCfFTw
	tubORkO02R5xeFFwjgaCkyA8cRdK17M2lmnuDaR15HfvmKhz6IN5JJK+
X-Gm-Gg: Acq92OE7cc0g7He3PQfWpSuF1EAs9LBWO+3BL2bpEgwgjKOpfEFSSr0tZiFKqg6Ro8O
	iBbxWy8UthE2KNOFUaQDpgPBV/oZ/k+pnY8XbH0DFeWxUOzfgPQt50IB5y+6Y6myzepbmBVTjHs
	k5o258XLBaoYEUvritD89aI+IKV7lEckjMM1Mqzfz/XNsPDO3cvbZT3wrpPAIYJ1lTGM1cVDQOl
	4iBjM7cLJKYqzHo54w659BwOp4CcF/XPZNHoxmI3F5CdN6l2zjAOhD2/xQBPw9XgjLvYGuwW5c2
	cAHMRzTftbeOnApeUrF6Vhx3OlqV3pVncgPJGRwX3201e2sOAxYoxRIC9gGab0zmRHpAmEL6qeX
	hi4/4RdWW+TitpGNOShduRVAyVybesZzEQFJnHXwfw4hgxqy0iSsBMxrHOmaBOAChpiYcIe7lZZ
	r0WN36w2xQta2LWFtT0/sNGhEaencKTMZZdeqgDcO4+uUS6Wgvvy3OXzA=
X-Received: by 2002:a17:902:e790:b0:2bf:379b:53ed with SMTP id d9443c01a7336-2c1e821e5e8mr49794665ad.27.1780678608079;
        Fri, 05 Jun 2026 09:56:48 -0700 (PDT)
Received: from devvm29614.prn0.facebook.com ([2a03:2880:ff:71::])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2c164f6dc92sm89653455ad.13.2026.06.05.09.56.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Jun 2026 09:56:47 -0700 (PDT)
Date: Fri, 5 Jun 2026 09:56:45 -0700
From: Bobby Eshleman <bobbyeshleman@gmail.com>
To: Stanislav Fomichev <sdf.kernel@gmail.com>
Message-ID: <aiL/zQe7Ku7bKIJ6@devvm29614.prn0.facebook.com>
References: <20260603-tcpdm-large-niovs-v1-0-f37a4ac6726c@meta.com>
 <20260603-tcpdm-large-niovs-v1-3-f37a4ac6726c@meta.com>
 <aiLsegSEGviNluv1@devvm7509.cco0.facebook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aiLsegSEGviNluv1@devvm7509.cco0.facebook.com>
X-Spamd-Bar: ---
X-MailFrom: bobbyeshleman@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: WVVR7URGACDJQPXDM7GGO2Q6WJKITGVU
X-Message-ID-Hash: WVVR7URGACDJQPXDM7GGO2Q6WJKITGVU
X-Mailman-Approved-At: Wed, 10 Jun 2026 11:24:34 +0000
CC: Donald Hunter <donald.hunter@gmail.com>, Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>, Andrew Lunn <andrew+netdev@lunn.ch>, Gerd Hoffmann <kraxel@redhat.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Shuah Khan <shuah@kernel.org>, netdev@vger.kernel.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-kselftest@vger.kernel.org, sdf@fomichev.me, razor@blackwall.org, daniel@iogearbox.net, almasrymina@google.com, matttbe@kernel.org, skhawaja@google.com, dw@davidwei.uk, Bobby Eshleman <bobbyeshleman@meta.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH net-next 3/4] selftests/net: ncdevmem: add -b option to set rx-buf-size on bind
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/WVVR7URGACDJQPXDM7GGO2Q6WJKITGVU/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [3.09 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DATE_IN_PAST(1.00)[114];
	R_DKIM_REJECT(1.00)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:sdf.kernel@gmail.com,m:donald.hunter@gmail.com,m:kuba@kernel.org,m:davem@davemloft.net,m:edumazet@google.com,m:pabeni@redhat.com,m:horms@kernel.org,m:andrew+netdev@lunn.ch,m:kraxel@redhat.com,m:vivek.kasireddy@intel.com,m:sumit.semwal@linaro.org,m:christian.koenig@amd.com,m:shuah@kernel.org,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linux-media@vger.kernel.org,m:linaro-mm-sig@lists.linaro.org,m:linux-kselftest@vger.kernel.org,m:sdf@fomichev.me,m:razor@blackwall.org,m:daniel@iogearbox.net,m:almasrymina@google.com,m:matttbe@kernel.org,m:skhawaja@google.com,m:dw@davidwei.uk,m:bobbyeshleman@meta.com,m:sdfkernel@gmail.com,m:donaldhunter@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[27];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER(0.00)[bobbyeshleman@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bobbyeshleman@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,davemloft.net,google.com,redhat.com,lunn.ch,intel.com,linaro.org,amd.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,fomichev.me,blackwall.org,iogearbox.net,davidwei.uk,meta.com];
	TAGGED_RCPT(0.00)[linaro-mm-sig,netdev];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DKIM_TRACE(0.00)[gmail.com:-];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp,meta.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 428A5668C4F

On Fri, Jun 05, 2026 at 08:35:25AM -0700, Stanislav Fomichev wrote:
> On 06/03, Bobby Eshleman wrote:
> > From: Bobby Eshleman <bobbyeshleman@meta.com>
> > 
> > Add -b <bytes> to request a non-default niov size via
> > NETDEV_A_DMABUF_RX_BUF_SIZE. When the value exceeds PAGE_SIZE,
> > udmabuf_alloc() switches to an MFD_HUGETLB-backed memfd so each 2 MB
> > hugepage produces one naturally-aligned sg entry.
> > 
> > Reject values > 2 MB up front: MFD_HUGETLB + udmabuf can only guarantee
> > 2 MB per sg entry (one hugepage), so a larger rx_buf_size would fail the
> > per-sg length/alignment check.
> > 
> > Add CONFIG_HUGETLBFS=y to drivers/net/hw/config so the new path is
> > reachable in the CI kernels built for these tests.
> 
> I vaguely remember there was also some kernel cmdline argument to
> reserve these? Do we need to also do something to NIPA to reserve 2MB
> pages for this test? Or was it for 1GB pages?

Good call, my little runner script when prototyping this adds these
pages at runtime and I forgot to move it into the patch, we can have the
py runner do this setup.

Best,
Bobby
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
