Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +MMXLCAg4WmipQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 19:45:04 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A7644132ED
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 19:45:04 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 34ABC45F3E
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:45:03 +0000 (UTC)
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	by lists.linaro.org (Postfix) with ESMTPS id 8807E3F830
	for <linaro-mm-sig@lists.linaro.org>; Wed,  4 Mar 2026 09:30:37 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=KpQO+ex8;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (lists.linaro.org: domain of david.laight.linux@gmail.com designates 209.85.128.45 as permitted sender) smtp.mailfrom=david.laight.linux@gmail.com
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-48371bb515eso99247715e9.1
        for <linaro-mm-sig@lists.linaro.org>; Wed, 04 Mar 2026 01:30:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772616636; x=1773221436; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BUzQoESoh9/PqMSFbMpuw4Pmh5IPXiGP/qvOjxX4wwo=;
        b=KpQO+ex8XezqxcLOKfXjbiNvHrlVnh+W8CkqyST3QLaRgWYfGdChGmweDqnpdfe9Hc
         XWPT6L2A5sNn7Td3rYx7u1tXL24jO0ji49x9rzev65tIbqbdV9psEdPXYB9dq/V+T8Xg
         hQ+0Q5fPnDMx1iactnJpeGGTBYcI8YNZmEVGH+Qudvj3FfBKccJgerzCM4gyrGQpxrE2
         rnGxp1tvrX3ffttWrhWa1QCHVRI+DdNP+n6Wqj5HBZ9AkQdhuLIBHckHR+iFOIFw8AYR
         kvj4X1KRVvMrV7Uzpf5ANshjWK6Ii8GQ6z/ddPfq3H4Cjwn03hu/DrLP0sBy/7P7fAxC
         tVqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772616636; x=1773221436;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=BUzQoESoh9/PqMSFbMpuw4Pmh5IPXiGP/qvOjxX4wwo=;
        b=tm+Tkim7tQOrQsPHPJl+vazhf6rhjt7w+gqGE1hl0mcPE/mVAr0NKTXiIOGC7+qQ5W
         gBx6TKb3YAnALU/EGjkqGfJRHrMLjMh9BvrnK7oKxBKuSmF6jSGWqbEX3FD6eSW3gtt6
         Sk1YvHbM3DKRTswsu9zN6TcvkRy6fv+n0ujN8XJpD8uww/YQNKlEeu/Mx/CL3LY6+p5F
         MuG1KE5lwwiQSkAzvpjW+iSI0IhyKWkIMOAvfdgQX74tRd0QxZsTwSrNxnp7g4zs5/yP
         p/c3JbgEV+QIp8TrDXqakJ+ziPo3B9aUtCM26zYXpqmEAk1b+L5l/tudW9FdQ1JswzmD
         WUhA==
X-Forwarded-Encrypted: i=1; AJvYcCX6fwwmIXDWE5DTtJNACJxEIw0N01en/XDR8M2Ddod2BFHHOww8VlSMJOGZu/3BTPjV4PMxMQ+5pw9Vxcyp@lists.linaro.org
X-Gm-Message-State: AOJu0YwyiSYHeCnEpjIkYC1zm6pDgEmw6M9i+JNPLedXIzRFShQpCF24
	yHAFtKy6y8aGh0+hwwIC/8UB5osbmOkp6ZAMoI/+WVbVV8xst+9l/MvJ
X-Gm-Gg: ATEYQzwr05yCROqq6Z4Ai3TnRAYZ3cWWy3v4QlG0kHdE0QnXBsrEWDlnQBFMs6hdEKi
	xwJq/N4KmWSkGEWZ7Ld/Re3ptDdZqo+iEWuawZn1C7801ThXxWHTJtMNWf4/0unfVrQPpmB5HI4
	QUR6X5hdBIz4B01LgGNAECRVCqBCptIrkidEIDtPTi7T0gON+a2l5nxfS0JEvdsosxg/W9wMS4L
	tTFoPKFvjefWW9bXBo99btSrbVfI9sS0aIh15t/Ad9IGn08DYHq75ppjzupw9F5d0zR3Z5c8y2U
	k3w3M43jmuvA8Ku0J5el+/Hwl6FJhP4SDZ2zXZIL+VaMAcncZxknHMnJ+/i7thDJ+u10u8or4/o
	ufp52epT4Kd/PQLKdz5uirOxp6sD7bUTTdf5ZKCTkHr4c6KiKic1tYHlAca3dAyqq1EyGvb7yB4
	TlUwVb1HmoUhjgZwat5MZAImLEAPs/Cnb11KTc0OozeJ3UYo1cCWFUeGL+HwXjaS3A
X-Received: by 2002:a05:600c:8b53:b0:483:498f:7963 with SMTP id 5b1f17b1804b1-4851989024emr19550785e9.26.1772616636117;
        Wed, 04 Mar 2026 01:30:36 -0800 (PST)
Received: from pumpkin (82-69-66-36.dsl.in-addr.zen.co.uk. [82.69.66.36])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4851884225asm38972555e9.6.2026.03.04.01.30.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Mar 2026 01:30:35 -0800 (PST)
Date: Wed, 4 Mar 2026 09:30:33 +0000
From: David Laight <david.laight.linux@gmail.com>
To: NeilBrown <neilb@ownmail.net>
Message-ID: <20260304092559.554ac9a9@pumpkin>
In-Reply-To: <177260561903.7472.14075475865748618717@noble.neil.brown.name>
References: <20260302-iino-u64-v2-0-e5388800dae0@kernel.org>
	<1787281.1772535332@warthog.procyon.org.uk>
	<1c28e34c7167acf4e20c3e201476504135aa44e8.camel@kernel.org>
	<177260561903.7472.14075475865748618717@noble.neil.brown.name>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; arm-unknown-linux-gnueabihf)
MIME-Version: 1.0
X-Spamd-Bar: ---
X-MailFrom: david.laight.linux@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: O32IHEPXVOCJBRQOMEE3NBTP2G7WMPA7
X-Message-ID-Hash: O32IHEPXVOCJBRQOMEE3NBTP2G7WMPA7
X-Mailman-Approved-At: Thu, 16 Apr 2026 17:00:32 +0000
CC: Jeff Layton <jlayton@kernel.org>, linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org, linux-trace-kernel@vger.kernel.org, nvdimm@lists.linux.dev, fsverity@lists.linux.dev, linux-mm@kvack.org, netfs@lists.linux.dev, linux-ext4@vger.kernel.org, linux-f2fs-devel@lists.sourceforge.net, linux-nfs@vger.kernel.org, linux-cifs@vger.kernel.org, samba-technical@lists.samba.org, linux-nilfs@vger.kernel.org, v9fs@lists.linux.dev, linux-afs@lists.infradead.org, autofs@vger.kernel.org, ceph-devel@vger.kernel.org, codalist@coda.cs.cmu.edu, ecryptfs@vger.kernel.org, linux-mtd@lists.infradead.org, jfs-discussion@lists.sourceforge.net, ntfs3@lists.linux.dev, ocfs2-devel@lists.linux.dev, devel@lists.orangefs.org, linux-unionfs@vger.kernel.org, apparmor@lists.ubuntu.com, linux-security-module@vger.kernel.org, linux-integrity@vger.kernel.org, selinux@vger.kernel.org, amd-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, n
 etdev@vger.kernel.org, linux-perf-users@vger.kernel.org, linux-fscrypt@vger.kernel.org, linux-xfs@vger.kernel.org, linux-hams@vger.kernel.org, linux-x25@vger.kernel.org, audit@vger.kernel.org, linux-bluetooth@vger.kernel.org, linux-can@vger.kernel.org, linux-sctp@vger.kernel.org, bpf@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 000/110] vfs: change inode->i_ino from unsigned long to u64
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/O32IHEPXVOCJBRQOMEE3NBTP2G7WMPA7/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [1.09 / 15.00];
	DATE_IN_PAST(1.00)[1040];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), No valid DKIM,none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[ownmail.net];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[46];
	ARC_NA(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.791];
	FROM_NEQ_ENVFROM(0.00)[davidlaightlinux@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email]
X-Rspamd-Queue-Id: 1A7644132ED
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, 04 Mar 2026 17:26:59 +1100
NeilBrown <neilb@ownmail.net> wrote:

> On Tue, 03 Mar 2026, Jeff Layton wrote:
> > On Tue, 2026-03-03 at 10:55 +0000, David Howells wrote:  
> > > Jeff Layton <jlayton@kernel.org> wrote:
> > >   
> > > > This version splits the change up to be more bisectable. It first adds a
> > > > new kino_t typedef and a new "PRIino" macro to hold the width specifier
> > > > for format strings. The conversion is done, and then everything is
> > > > changed to remove the new macro and typedef.  
> > > 
> > > Why remove the typedef?  It might be better to keep it.
> > >   
> > 
> > Why? After this change, internel kernel inodes will be u64's -- full
> > stop. I don't see what the macro or typedef will buy us at that point.  
> 
> Implicit documentation?
> ktime_t is (now) always s64, but we still keep the typedef;
> 
> It would be cool if we could teach vsprintf to understand some new
> specifier to mean "kinode_t" or "ktime_t" etc.  But that would trigger
> gcc warnings.

A more interesting one would be something that made gcc re-write the
format with the correct 'length modifier' for the parameter.

That would save a lot of effort!

	David

> 
> NeilBrown
> 

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
