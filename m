Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sJ0fM/9j5mkuvwEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:35:59 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 789CB4318F5
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:35:59 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7DEC34068F
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 17:35:58 +0000 (UTC)
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	by lists.linaro.org (Postfix) with ESMTPS id CA7B73F90B
	for <linaro-mm-sig@lists.linaro.org>; Thu,  2 Apr 2026 12:58:19 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=resnulli-us.20230601.gappssmtp.com header.s=20230601 header.b=ZWvs4xl2;
	dmarc=none;
	spf=none (lists.linaro.org: domain of jiri@resnulli.us has no SPF policy when checking 209.85.128.44) smtp.mailfrom=jiri@resnulli.us
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-48891776099so7527405e9.2
        for <linaro-mm-sig@lists.linaro.org>; Thu, 02 Apr 2026 05:58:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1775134699; x=1775739499; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=UzYbx1sEpC0M+peXKDrwMMEQ4PJH/E0owphKLjh5Vw8=;
        b=ZWvs4xl2/u6WqZ4xWhbcLF4DI1Oq0D8SCNUHmrwfdABhcD7cffA9+gELmU52IruceU
         Mn9ubFzt9+EUAJ4SealXxL+oV0tfMnInz/t+21SE1OuDT0wSLzblu4qQ7hlAkcuWkwse
         kZhKBLk7TS9rZkGmhjjbjeIGRsYgRQTBA+SaJt0kjOYtpbs1dGDSk3oHiwnym0FHVzOo
         lx6Pwg4KoKyICyARgNF2epFSy64pnblehd1JHT3R3nb6kohvjFZDjp/xHHuuik/PvG+q
         vk0MQxkHY+h7lmXZSrapVaMmINYp/upQhJX+N44MTPWsOomD/T1qMFmqpdQ3TaX47YGJ
         TRLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1775134699; x=1775739499;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UzYbx1sEpC0M+peXKDrwMMEQ4PJH/E0owphKLjh5Vw8=;
        b=JnVRpJUV+zOc/XDastofQit50YWfRQYfkswdz4+CI9SPLBXqUBju9GSedoXRVm34sz
         0/3kMawyJaEDMtA0HDysZgD2kqUIyLpdnDqfTOIDOoxifS5HYeqxLJQRpi+R4oPqQvky
         /QqsPSg8IOrV/2d0e3Xy23YgVuiln3uqDZB4Tj8PLWLyTRMYML6s4cCElufzSSczZp6c
         BYPbL4lbxFYiodetB+FlbdnKexQrNCWJ8Jt/u6Rx0uiSR/biPAwKniRmZ5EAZGASjHzv
         oEtgyEg3bn97Fs7LivHD8y/t33Vx/VUMvcutHn3eAJu1mGvtE+qqoFjBZv0IG3AciNnH
         LjVQ==
X-Forwarded-Encrypted: i=1; AJvYcCV6+LqqVvBTX5ntrJHOuRJHaN7EMx/cdUPqxFi7/ppTg5YbRnHqv7+Z4T2DfstHHLrn5WY5cHEGIX675T+F@lists.linaro.org
X-Gm-Message-State: AOJu0YzyHUIvXi/NAxoLYj/R2Dn55RdAFRRIsnShsqlSAYAHUZDVNz2y
	qLq3DB2EiPWDEzXuWz4qopxK1KCW4Vp4x4MczakgAfe0OHA6v3+qH+mtJw+o7UcF/Fs=
X-Gm-Gg: ATEYQzx29rlOJImQCf9YK1F6toawTOEQJ9QzXk1r1o7wa8BF/FCPLL70cYUD7V13ucd
	zXgDwltbGpvc/LM8E0meinyjFDjPe+yn7IcGe5o548TkoTqBYXosCTDssE3HSIXfR7bMJ2BEN/g
	QrhzUv8sISrf42NixUhR/aRk1X5AjUXDHce8Hk4f8vImM8LDnKPB/YGwdGzPPzE1ykCQbyrHl2/
	qEidaCwAWun+VBinYH9Bx/JwuSAAeNp7UQVGPbOpxT4y3GU8yoGvVo+9ouU2F5OtoFQLYxKTLjn
	IYCmjJPoQ6RqR/gMD7IFevFVEhjIGtyFPjI3v1GSKdhtfoZjLWSgRwa3YwPY+ZhVUFIbe1bwTSp
	zeB752oQci6hag1GPn3flz3gDLtGczEqdOLosrW4jh50uMuYu0M+ZChRBH+qeWWJDqRhn+hgOs6
	v4Dcgy3nFAJv5XXzfC5G1dBZLsXuxojrFc45E8qLu07g==
X-Received: by 2002:a05:600c:1f93:b0:480:1d0b:2d32 with SMTP id 5b1f17b1804b1-4888b7130f3mr58915525e9.12.1775134698707;
        Thu, 02 Apr 2026 05:58:18 -0700 (PDT)
Received: from FV6GYCPJ69 ([208.127.45.21])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4887c884f77sm62829225e9.20.2026.04.02.05.58.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Apr 2026 05:58:18 -0700 (PDT)
Date: Thu, 2 Apr 2026 14:58:15 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: Jason Gunthorpe <jgg@ziepe.ca>
Message-ID: <l26gcpagdhabj6w66hhxzgwkwqlybontqtbf7f6lu2fic6pnu6@crh3rt3j3alm>
References: <20260325192352.437608-1-jiri@resnulli.us>
 <4s75rtsmdfrze4rscbqzyrjyrko7n6sehe7agrngqag2cna5bz@eflmf4kwjocj>
 <20260402120254.GB2551565@ziepe.ca>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260402120254.GB2551565@ziepe.ca>
X-Spamd-Bar: --
X-MailFrom: jiri@resnulli.us
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 7BQ3INSDRATZJYVTVEIYCKDJWC5XBRX6
X-Message-ID-Hash: 7BQ3INSDRATZJYVTVEIYCKDJWC5XBRX6
X-Mailman-Approved-At: Mon, 20 Apr 2026 17:33:45 +0000
CC: Brian Starkey <brian.starkey@arm.com>, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, sumit.semwal@linaro.org, benjamin.gaignard@collabora.com, jstultz@google.com, tjmercier@google.com, christian.koenig@amd.com, robin.murphy@arm.com, leon@kernel.org, sean.anderson@linux.dev, ptesarik@suse.com, catalin.marinas@arm.com, aneesh.kumar@kernel.org, suzuki.poulose@arm.com, steven.price@arm.com, thomas.lendacky@amd.com, john.allen@amd.com, ashish.kalra@amd.com, suravee.suthikulpanit@amd.com, linux-coco@lists.linux.dev, nd@arm.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5 0/2] dma-buf: heaps: system: add an option to allocate explicitly shared/decrypted memory
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/7BQ3INSDRATZJYVTVEIYCKDJWC5XBRX6/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [0.99 / 15.00];
	DATE_IN_PAST(1.00)[436];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	DMARC_NA(0.00)[resnulli.us];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[25];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FROM_NEQ_ENVFROM(0.00)[jiri@resnulli.us,linaro-mm-sig-bounces@lists.linaro.org];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	NEURAL_SPAM(0.00)[0.107];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email,ziepe.ca:email]
X-Rspamd-Queue-Id: 789CB4318F5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thu, Apr 02, 2026 at 02:02:54PM +0200, jgg@ziepe.ca wrote:
>On Thu, Apr 02, 2026 at 10:52:34AM +0100, Brian Starkey wrote:
>> I'm not clear why the heap depends on !CONFIG_HIGHMEM, but I also
>> don't know anything about SEV/TDX.
>
>It is because the CC apis, set_memory_decrypted()/etc are slightly
>mis-designed. They take in a vaddr to represent the address instead of
>a phys_addr_t or a page *
>
>This means the user has to use page_address() and then the whole thing
>is incompatible with highmem.
>
>Which is fine, highmem and CC are never turned on together.

Yeah, I was wondering if it is worth sanitizing it, but decided to be on
the safe side, for unlikely oddities future may bring sake :)
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
