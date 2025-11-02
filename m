Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 80E0BC29378
	for <lists+linaro-mm-sig@lfdr.de>; Sun, 02 Nov 2025 18:17:09 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A94783F820
	for <lists+linaro-mm-sig@lfdr.de>; Sun,  2 Nov 2025 17:17:08 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id C59563F683
	for <linaro-mm-sig@lists.linaro.org>; Sun,  2 Nov 2025 17:16:56 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=tspLq4ix;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (lists.linaro.org: domain of leon@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=leon@kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 0BA16416D7;
	Sun,  2 Nov 2025 17:16:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0A209C4CEF7;
	Sun,  2 Nov 2025 17:16:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762103815;
	bh=6J4RYbNE7xRGZGzVZmTnvJ17pocxZEQO9XjI2jSDlH8=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
	b=tspLq4ix1Zd1Pz1ACFGUiNmrbJnzPL7WcetUIIaigwHgNSnnvIU97bD5BO9b+1kJW
	 9hMUX7inBLuT4/KYLcVG9AhBgpcZmlahi1nbGKWdD8QFRNI1XyKb9kyhxD1lriax7d
	 L7+lsYqNRSlhNOz0bBqADK3QYcCgyGhuAt/yTZjHD8zIfv0/eyK/xM8M82MBMFaofC
	 JHi4KzwaSw0HVNGXDzmz1QLTVhKj58VbER6h9g1QEdLlltvOq3nqqmzztDiwzjm68s
	 S1D5F2BXFQHxMG9+c375B641x1Aek6ToQdlZW02OAFDPQcmMijETD4JZjipl3UtgyG
	 rWR9hIq+gEP7w==
Received: from phl-compute-04.internal (phl-compute-04.internal [10.202.2.44])
	by mailfauth.phl.internal (Postfix) with ESMTP id 0463EF40066;
	Sun,  2 Nov 2025 12:16:53 -0500 (EST)
Received: from phl-imap-08 ([10.202.2.84])
  by phl-compute-04.internal (MEProxy); Sun, 02 Nov 2025 12:16:54 -0500
X-ME-Sender: <xms:BZIHaYuDYmBjtG7IxUKfvEjba2RKlTl6PZHc9IqGhy7j_jG9gMTxwg>
    <xme:BZIHaQS40zUxhPV_fDp3AqrkIE7bV3DYAqxEVG9VTMoSNhTnkeM8e4NmeRVOn9bh6
    C0ttUUKruiqlA23NausYNPjUtH2T_MmINiNR9Ge9obYEtgqTuQOXog>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdeggddujeehkeefucetufdoteggodetrf
    dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
    rghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujf
    gurhepofggfffhvfevkfgjfhfutgfgsehtjeertdertddtnecuhfhrohhmpedfnfgvohhn
    ucftohhmrghnohhvshhkhidfuceolhgvohhnsehkvghrnhgvlhdrohhrgheqnecuggftrf
    grthhtvghrnhepjeevffelgfelvdfgvedvteelhefhvdffheegffekveelieevfeejteei
    leeuuedvnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomh
    eplhgvohhnodhmvghsmhhtphgruhhthhhpvghrshhonhgrlhhithihqdduvdeftdehfeel
    keegqddvjeejleejjedvkedqlhgvohhnpeepkhgvrhhnvghlrdhorhhgsehlvghonhdrnh
    hupdhnsggprhgtphhtthhopeefgedpmhhouggvpehsmhhtphhouhhtpdhrtghpthhtohep
    jhhorhhoseeksgihthgvshdrohhrghdprhgtphhtthhopegthhhrihhsthhirghnrdhkoh
    gvnhhighesrghmugdrtghomhdprhgtphhtthhopehrohgsihhnrdhmuhhrphhhhiesrghr
    mhdrtghomhdprhgtphhtthhopehlohhgrghnghesuggvlhhtrghtvggvrdgtohhmpdhrtg
    hpthhtohepsghhvghlghgrrghssehgohhoghhlvgdrtghomhdprhgtphhtthhopehkvghv
    ihhnrdhtihgrnhesihhnthgvlhdrtghomhdprhgtphhtthhopehvihhvvghkrdhkrghsih
    hrvgguugihsehinhhtvghlrdgtohhmpdhrtghpthhtoheprgigsghovgeskhgvrhhnvghl
    rdgukhdprhgtphhtthhopehguhhsthgrvhhorghrsheskhgvrhhnvghlrdhorhhg
X-ME-Proxy: <xmx:BZIHaR-tvJBh8-mgAOYUGdkn8s8kLulP-EWIIyk8S5GtuaFeBTZsdA>
    <xmx:BZIHaaYTJL4Te_4Fw1GF_JCGz90x2YjX8VH8icEpsxwlFdW8L1BOyw>
    <xmx:BZIHafTp-dL-74eqOB1FVVTeUq8Z5EEatKsfbiYGKBXPZYMUUjiokA>
    <xmx:BZIHaZkRSqwn6yV6mfCDZEPERqhJEoAAI8EBR8iho6RnbORQMwbAEA>
    <xmx:BZIHabI8zmEQV1j8o_hMlt7NB4IWeKKppSR-0yCNW9noFRUXSASJvZ-B>
Feedback-ID: i927946fb:Fastmail
Received: by mailuser.phl.internal (Postfix, from userid 501)
	id AD0F62CE0067; Sun,  2 Nov 2025 12:16:53 -0500 (EST)
X-Mailer: MessagingEngine.com Webmail Interface
MIME-Version: 1.0
X-ThreadId: A48325OsNhe3
Date: Sun, 02 Nov 2025 19:16:34 +0200
From: "Leon Romanovsky" <leon@kernel.org>
To: "Alex Williamson" <alex@shazbot.org>
Message-Id: <d757cbcb-866a-4af4-b4fd-0ba27f706e74@app.fastmail.com>
In-Reply-To: <20251102101158.6d2c36c6@shazbot.org>
References: <20251102-dmabuf-vfio-v6-0-d773cff0db9f@nvidia.com>
 <20251102-dmabuf-vfio-v6-10-d773cff0db9f@nvidia.com>
 <20251102080137.209aa567@shazbot.org> <20251102151253.GA50752@unreal>
 <20251102101158.6d2c36c6@shazbot.org>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: C59563F683
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.99 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.252.31];
	MIME_GOOD(-0.10)[text/plain];
	XM_UA_NO_VERSION(0.01)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_TWELVE(0.00)[34];
	URIBL_BLOCKED(0.00)[app.fastmail.com:mid,sea.source.kernel.org:rdns,sea.source.kernel.org:helo];
	NEURAL_HAM(-0.00)[-0.994];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	DNSWL_BLOCKED(0.00)[172.234.252.31:from,100.75.92.58:received];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
Message-ID-Hash: M2KSLPGTUA3E7HTR3A76XS56I23UPNMO
X-Message-ID-Hash: M2KSLPGTUA3E7HTR3A76XS56I23UPNMO
X-MailFrom: leon@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Bjorn Helgaas <bhelgaas@google.com>, Logan Gunthorpe <logang@deltatee.com>, Jens Axboe <axboe@kernel.dk>, Robin Murphy <robin.murphy@arm.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Jason Gunthorpe <jgg@ziepe.ca>, Andrew Morton <akpm@linux-foundation.org>, Jonathan Corbet <corbet@lwn.net>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Alex Williamson <alex.williamson@redhat.com>, Kees Cook <kees@kernel.org>, "Gustavo A. R. Silva" <gustavoars@kernel.org>, Ankit Agrawal <ankita@nvidia.com>, Yishai Hadas <yishaih@nvidia.com>, Shameer Kolothum <skolothumtho@nvidia.com>, Kevin Tian <kevin.tian@intel.com>, Krishnakant Jaju <kjaju@nvidia.com>, Matt Ochs <mochs@nvidia.com>, linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, linux-block@vger.kernel.org, iommu@lists.linux.dev, linux-mm@kvack.org, linux-doc@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.li
 naro.org, kvm@vger.kernel.org, linux-hardening@vger.kernel.org, Vivek Kasireddy <vivek.kasireddy@intel.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v6 10/11] vfio/pci: Add dma-buf export support for MMIO regions
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/M2KSLPGTUA3E7HTR3A76XS56I23UPNMO/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit



On Sun, Nov 2, 2025, at 19:11, Alex Williamson wrote:
> On Sun, 2 Nov 2025 17:12:53 +0200
> Leon Romanovsky <leon@kernel.org> wrote:
>> On Sun, Nov 02, 2025 at 08:01:37AM -0700, Alex Williamson wrote: 
>> > We don't need the separate loop or flag, and adding it breaks the
>> > existing reverse list walk.  Thanks,  
>> 
>> Do you want me to send v7? I have a feeling that v6 is good to be merged.
>
> Let's hold off, if this ends up being the only fixup I can roll it in.
> Thanks,

Thanks 

>
> Alex
> 
>> diff --git a/drivers/vfio/pci/vfio_pci_core.c b/drivers/vfio/pci/vfio_pci_core.c
>> index 24204893e221..51a3bcc26f8b 100644
>> --- a/drivers/vfio/pci/vfio_pci_core.c
>> +++ b/drivers/vfio/pci/vfio_pci_core.c
>> @@ -2403,7 +2403,6 @@ static int vfio_pci_dev_set_hot_reset(struct vfio_device_set *dev_set,
>>                                       struct iommufd_ctx *iommufd_ctx)
>>  {
>>         struct vfio_pci_core_device *vdev;
>> -       bool restore_revoke = false;
>>         struct pci_dev *pdev;
>>         int ret;
>>  
>> @@ -2473,7 +2472,6 @@ static int vfio_pci_dev_set_hot_reset(struct vfio_device_set *dev_set,
>>                 }
>>  
>>                 vfio_pci_dma_buf_move(vdev, true);
>> -               restore_revoke = true;
>>                 vfio_pci_zap_bars(vdev);
>>         }
>>  
>> @@ -2501,15 +2499,12 @@ static int vfio_pci_dev_set_hot_reset(struct vfio_device_set *dev_set,
>>                                struct vfio_pci_core_device, vdev.dev_set_list);
>>  
>>  err_undo:
>> -       if (restore_revoke) {
>> -               list_for_each_entry(vdev, &dev_set->device_list, vdev.dev_set_list)
>> -                       if (__vfio_pci_memory_enabled(vdev))
>> -                               vfio_pci_dma_buf_move(vdev, false);
>> -       }
>> -
>>         list_for_each_entry_from_reverse(vdev, &dev_set->device_list,
>> -                                        vdev.dev_set_list)
>> +                                        vdev.dev_set_list) {
>> +               if (__vfio_pci_memory_enabled(vdev))
>> +                       vfio_pci_dma_buf_move(vdev, false);
>>                 up_write(&vdev->memory_lock);
>> +       }
>>  
>>         list_for_each_entry(vdev, &dev_set->device_list, vdev.dev_set_list)
>>                 pm_runtime_put(&vdev->pdev->dev);
>> 
>> 
>> > 
>> > Alex
>> >   
>>
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
