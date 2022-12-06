Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id BE350644428
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  6 Dec 2022 14:09:06 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AB1983EF52
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  6 Dec 2022 13:09:05 +0000 (UTC)
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (mail-bn1nam02on2071.outbound.protection.outlook.com [40.107.212.71])
	by lists.linaro.org (Postfix) with ESMTPS id DE9553EA4D
	for <linaro-mm-sig@lists.linaro.org>; Tue,  6 Dec 2022 13:08:55 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=QTmbzPou;
	arc=pass ("microsoft.com:s=arcselector9901:i=1");
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.212.71 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ic1jGxG0DZ5L+sb9EONL3HlrOWlXfgArDCtBJ+0p6roqZ7/gAoiL7DyGk0Ujuhl9BhJunEqFfgsS8kmJuuxmnrhIhlxHOniMz2P1sSgqjaFuYVZuX23NfGHdZce0rQ54W7fJK4xfZXl8xo0bLfbnB7XYkDrJOtTtXGjtxUe2W/qK7Zd0AkH8azX8YrDZMB/Vmx822LvmdmqzBeU7VYHYAmVXrVyqkkOvwm/JKU+2pPbLSFkQR7oL3kbmOQh33Y4c3JMgyUKroR6SnK+2rpABfFkfxbWjt321G4zxMkAKAJpJspWQEDMqc4MHicBDLmugDq/X2t7vb8jcW0qne9AegA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FNiynvLDXzRJufO1AwnfcBacpzKaZVsu5VqVpWDKV+k=;
 b=OLUCrquhgBGOv6KKfpWAea1P5+Yg/iWoOM2XgSb9qmtV+V+lOkZBDENdIWJ+6US3xqUeNuTvZK9FwEsvTuYqggEpbsPNY34yKYl7jfq8Jq1lBBbUh/+7qsdWjW51DM5Oulvpqp7+iBY4mGgzbHR+SPwUg48QSCSOR0mNjpJhXqGQ0a975tpI+FcVuur1EjwKq+LqaxRKXEnWqAvszAznAGE9pvyL4swv7lXf4/qTcU6hVQUc7Ryu5cF8AqfsZmn+/ep+5tqu3LbENWfhXE6HqPjfAYBpCeNhAqZrmhhx1V178j787leDWOPnd+nf0f3xZyxkC/Ep5YCuoeoVeibGvw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FNiynvLDXzRJufO1AwnfcBacpzKaZVsu5VqVpWDKV+k=;
 b=QTmbzPouBZrIGjbadmVKSZJOBgYNDeWpnxRGPsfufmAM1Jzswi8/Muft64beLRmhyHRkQZxL9Bb6eGOnz9p2ddH1bpljuIJ9eesesRBUvKu38A6LpOcPmT8GK/PRTkIidPGK1skhB/Mg2cPGtvhnCWuTtXMyYabpmyuaXMvADU0=
Received: from BN8PR12MB3587.namprd12.prod.outlook.com (2603:10b6:408:43::13)
 by PH8PR12MB6673.namprd12.prod.outlook.com (2603:10b6:510:1c0::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5880.14; Tue, 6 Dec
 2022 13:08:53 +0000
Received: from BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::7d43:3f30:4caf:7421]) by BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::7d43:3f30:4caf:7421%7]) with mapi id 15.20.5880.014; Tue, 6 Dec 2022
 13:08:53 +0000
Message-ID: <b2736dcd-c593-e26b-5f52-638b64bc8e2b@amd.com>
Date: Tue, 6 Dec 2022 14:08:48 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Content-Language: en-US
To: Charan Teja Kalla <quic_charante@quicinc.com>,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>,
 cuigaosheng <cuigaosheng1@huawei.com>, "T.J. Mercier" <tjmercier@google.com>
References: <20221117062152.3029018-1-cuigaosheng1@huawei.com>
 <f12a5dbe-4626-f6c7-236b-30bb16be1dd6@quicinc.com>
 <99d3aee6-ba3e-5333-6f79-ddbcfc0e8843@amd.com>
 <CABdmKX1UMB0L0PmHB59nijReZef6LUQ3XKXitHZo2YnUrJTz9Q@mail.gmail.com>
 <2c9fa595-e788-5474-4f2b-ffbd08a70d13@amd.com>
 <CABdmKX0KJJV0iQwy0aUNXcLc1DGyLjmh6_Y53asHEoh-uyHzAA@mail.gmail.com>
 <83944425-c177-7918-bcde-9cf7296a613f@amd.com>
 <e12784da-b3e3-ddec-0e84-f968d60097c4@quicinc.com>
 <b2d5d904-99f2-7974-a22d-63a6cf864973@huawei.com>
 <689ad89b-0e34-3743-24c9-3f92856720f8@amd.com>
 <a87e407c-f858-28f1-c5ea-ca69b39db53a@huawei.com>
 <3de513b2-8ec3-2ff4-136d-0f56ac07c0ff@gmail.com>
 <866708a4-9f31-b5e5-fbda-10b2a6c948bf@quicinc.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
In-Reply-To: <866708a4-9f31-b5e5-fbda-10b2a6c948bf@quicinc.com>
X-ClientProxiedBy: FR2P281CA0183.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:9f::19) To BN8PR12MB3587.namprd12.prod.outlook.com
 (2603:10b6:408:43::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR12MB3587:EE_|PH8PR12MB6673:EE_
X-MS-Office365-Filtering-Correlation-Id: 6e354154-73b8-47c0-7296-08dad78b0663
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	85eq0nCuYhSarhdwVDCudmKu2gPCUWbA0/4yTzYGylyT+7ogFEFN99sgXrXLTwWVReSQpYRHWYCWA6LQ74syszyya56+d2kWgzR2YflAtvGpBRZ94b2dEpmypt3PcTUWac/kdtD7d4W6G8ZiBtLSUbWfIJzOmCVpO2oD7aRS71T3x8zQwjnuBiuOSXm88wHeuLoct1xKWB7iqtHM5uaSL/edxluR8VZBSwnqh/+T/UGQyDnnBX7DS7p0xkZAkR8fRvxYjkGRcaBGP96M9RT8MsFVWTrc63uGA+Nc+V8BO0o579W7RGUXqWZTz3PFCenCiqjz60sIO+eqSdv3iLIsmLy3+g4QCPWsTu0XnbdeJzGkYheFU2Cdgx/pC2F0RiV9NIPug90V3wVDzbbihzEZFQVKH0kTeOo09LbkpSrF5RS8ywng+Vjvk0aAVYAGBzGBGReCIU8aHYEzXPOi9EdhMJu0yOL2aJeGuFAW5pRdb5kJFfF4GWGMDz4j2Rtsm0Q3PqELYZKH2gjo5StIRS0byksVP+5KBYKfVKPok7PNnQhzu0ruG4sWrlw0QHWF5UTTDCyr0SgKjEbcElHfwlCBHhYAGdmg90ooQHc4ekgv6t/iYFG11WZbsQcp2lrmcX8UE5zgWbz3IA/xEqQOCbujIb02ixj0oC6W5kfGLiP7ipHp9Du5JQB+CzaEEQOqVy3RTXNwPu4RdnH7fbRmnN4NR4CWmQ8mQd/KorP0s987J+Y=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR12MB3587.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(396003)(136003)(39860400002)(376002)(346002)(366004)(451199015)(36756003)(31686004)(31696002)(4326008)(41300700001)(66556008)(2906002)(66476007)(8936002)(8676002)(66946007)(7416002)(86362001)(83380400001)(38100700002)(6486002)(54906003)(2616005)(316002)(110136005)(5660300002)(6666004)(186003)(53546011)(6506007)(66574015)(478600001)(6512007)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?UmtHRnd5b1lzdkVobWU0TmVGWjBUWG5JaGZRZ3VseDVUUmJBNkZkdWgwd2p6?=
 =?utf-8?B?ZjVHUzU5NFp2TFFNUDZVV2EwMVBHTmZoU3duYnlBVmpsWTdIdDFmcTkxWUJM?=
 =?utf-8?B?TUk3Ymt2aTk2OURaTXQ1OXZPUjdCRDRRM0crL0lUaDFhSHdCVEJNUnoya29j?=
 =?utf-8?B?emZIVVpidTJSWE1NVVRtVE0zaWxNZ2ExeFUwaFJ3ZlRUNlhvY3pwaUJQNnU1?=
 =?utf-8?B?VEJ4eTVlSDk3dmFUZWJCRXRvWEFCTXVEcUJnUDlTaUVWN2pOekVGdFd4amIy?=
 =?utf-8?B?Q3RxWjZUQ0QyMnNKWVRCd2wrUHVjbEc2QWozTEhmakRESFZNMW9KcWxMeUJK?=
 =?utf-8?B?YU1ocWhxVjNST1pnSGh5aTlVd0w0bEwyNitTNStuL1RJbHFkTnJ6ZU8yUFNa?=
 =?utf-8?B?WFFXei9RcXRHU0JCYjAvVi94R0pjWEVjMVZBbDB3VDZycU94TUdBY1dOWHJN?=
 =?utf-8?B?N2Y3SDl0bHFDRGcyRTNQZnNQQVVTeDE5dTNsMWlCNUFPVk5keEFXKzF5VTMr?=
 =?utf-8?B?MUdCQWNZZWFCMGJkQ2haRnN4Nnh1bnl1SU05aWcwcU9RSFJ1TTR0UjF3U0RM?=
 =?utf-8?B?NnkxWkhxUFE2YXZVOFUrc1pubVl0eUtKNHVPQ1psU3Z1dm8yM2RUaWNDbGFo?=
 =?utf-8?B?blhJcVdvMjdhRDE1YldidFBQb2VldFJvdmlIQjVMZ2ZDeXZvZHFqM0lXRzlj?=
 =?utf-8?B?SUF1ak1XSysxc3pGUEpDd29ybWtTNm9ra1lQM29yeWhZV3F3YUlPTFMvUm1C?=
 =?utf-8?B?UFZVcnN3cndnOGhUQUJXbUdxUWRVNnBSSkt5VTI5YzZZMzE1VjNkNG5uLzd5?=
 =?utf-8?B?L2YrMmZQYjA0bDhXVmhoNW45c1p5dXNSSklqclYzVllmZHJFbTY5UndYcmpU?=
 =?utf-8?B?aFFrV2hreWFRZnB3Z1piSEtaYi81aGVDYnFubnZFc1FvZHRDSU5yRHNCL1hE?=
 =?utf-8?B?empzOFg1OHA1Yzc5YkwyZzdya1gvVnk1RjV6YmZ3RFhNMUc3TW5iZnVEbG5Z?=
 =?utf-8?B?MFFxb2tTdzRZTS9qOXVNeGNRZjB2dVZqa0hEa1EwQlRtNVVqYnRHUFN0dkFz?=
 =?utf-8?B?dGltdk5lMWNZNXB3L1NhQVpBcjJtYndHakZTdy80THZEbnJJY2V3dmhmYjU0?=
 =?utf-8?B?alVJeFR5bS9NN1dScWxXdnJhWlV2andsWlFEODhEQUdlWmpCZXluN3ZrUHpx?=
 =?utf-8?B?UmRkWTdiOXduUGpqNmpqemRjOUZwdkxmd3d6R3haYmJNQTBWNWxPVzBEdksr?=
 =?utf-8?B?VlowbEJHb1luRGpGTXpwbUpVZ2tGSFhIYW9oOW9QUHRSRk9ZREV6aXMzSE9z?=
 =?utf-8?B?aGZiSmd5SEt5OG1URnZEczdablNldzVCbEZ3TWJQODA4MlFHaUR4aUVWMHFn?=
 =?utf-8?B?SE5ybnNmaWNoY1VlSTc0dmk2SlB1TG5UcVF6enJROHFSallpc1JXTDdhM2Zl?=
 =?utf-8?B?VkZNNUtrb3NDN0hXTlM3YjgyanYwYmR6N0loclZCMEZnNkkyaGNMb2w3K1Fu?=
 =?utf-8?B?TTlYb0d1ZkRsa1grVzNJSW4yZnp5OFdubUNnclJrVnpqNjlqNm5MZ0Y5cVV1?=
 =?utf-8?B?Qk81QTdvOHFjMUdHaDBRUDdhUGpFV2hSTFRid0trU0Z1YVdXanExdUtWd0Jp?=
 =?utf-8?B?dG1Kbk1VK2dnZUROSnRMWW5MQnRVT3RVMmhiYjBVbi90VnZFNDloUGVsV1JX?=
 =?utf-8?B?UW9VYXgvMjFraTVITHBtcDBrUVBXNXQwQW1mTmFzUkp6NjRGcXo4eGRvenNw?=
 =?utf-8?B?cTJjMGdkRjFtdVplTnBkbFc3Q1REVk1UOVB3R3QwUE1uRUpxZHBRU2cwM0Nw?=
 =?utf-8?B?WThUZkcyNnlWK2xXUmJZeGZERm52TTlWdk1yK3VlU0EzL3c5QzlKaWRQV3pV?=
 =?utf-8?B?cUtRVUxFc2Mza1YyQjVtMmFCOHpmRy9xeEtaa3JlVDBSemFFamRPY2x6VFhy?=
 =?utf-8?B?Ylp2QVgzWlRtTmUrZVhTbkZrVmtrQTdKTlZ1dVc0UjBHN0xna0dEcUFRWkcy?=
 =?utf-8?B?aVZSNjJUN2RzbWxMNms1VkJ0Zis0S2xsRWNKNXdqd1BLY09DdDJ4SlRoa1dJ?=
 =?utf-8?B?UzVBTUc5b1hqU1BjZVptMUZvR0JtcGFRMFF0VkVnSmlXMUdzLzdCS3FKbnhU?=
 =?utf-8?B?bEJtakpMUGVLV0ZhaWtPTk80a3E5a3hzUU9TS21sQm9YVE5VTmdhUVI2OW5I?=
 =?utf-8?Q?UCqiEvEXSHTSA/u+jwsaiiRDQD48jmFJcoBDeJRG3/dd?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6e354154-73b8-47c0-7296-08dad78b0663
X-MS-Exchange-CrossTenant-AuthSource: BN8PR12MB3587.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Dec 2022 13:08:53.6765
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hbwbgwcxcUSPbkMCFsnuH+G1DGyxFMWYXSxCsojlzUNvM/EHpM903PaIOFRejT6L
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR12MB6673
X-Rspamd-Queue-Id: DE9553EA4D
X-Spamd-Bar: ---------
X-Spamd-Result: default: False [-9.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector9901:i=1];
	RCVD_IN_DNSWL_HI(-0.50)[2603:10b6:408:43::13:received];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.212.71:from];
	DBL_BLOCKED_OPENRESOLVER(0.00)[NAM02-BN1-obe.outbound.protection.outlook.com:helo,amd.com:dkim];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	RCPT_COUNT_SEVEN(0.00)[10];
	DKIM_TRACE(0.00)[amd.com:+];
	RCVD_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[quicinc.com,gmail.com,huawei.com,google.com];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_IN_DNSWL_FAIL(0.00)[40.107.212.71:server fail];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: TG5RU6CLKJIYYKCEHLXEKMGHEUOEOMPD
X-Message-ID-Hash: TG5RU6CLKJIYYKCEHLXEKMGHEUOEOMPD
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: sumit.semwal@linaro.org, Dan Carpenter <dan.carpenter@oracle.com>, Pavan Kondeti <quic_pkondeti@quicinc.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: Fix possible UAF in dma_buf_export
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/TG5RU6CLKJIYYKCEHLXEKMGHEUOEOMPD/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMDYuMTIuMjIgdW0gMTM6NTUgc2NocmllYiBDaGFyYW4gVGVqYSBLYWxsYToNCj4gVGhhbmtz
IENocmlzdGlhbi9USiBmb3IgYWxsIHlvdXIgaW5wdXRzISENCj4NCj4gT24gMTEvMjQvMjAyMiA2
OjI1IFBNLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPj4+PiBJIHdhcyBhbHJlYWR5IHdvbmRl
cmluZyB3aHkgdGhlIG9yZGVyIGlzIHRoaXMgd2F5Lg0KPj4+Pg0KPj4+PiBXaHkgaXMgZG1hX2J1
Zl9zdGF0c19zZXR1cCgpIG5lZWRpbmcgdGhlIGZpbGUgaW4gdGhlIGZpcnN0IHBsYWNlPw0KPj4+
IGRtYWJ1Zi0+ZmlsZSB3aWxsIGJlIHVzZWQgaW4gZG1hX2J1Zl9zdGF0c19zZXR1cCgpLCB0aGUN
Cj4+PiBkbWFfYnVmX3N0YXRzX3NldHVwKCkgYXMgZm9sbG93czoNCj4+Pg0KPj4+PiAxNzEgaW50
IGRtYV9idWZfc3RhdHNfc2V0dXAoc3RydWN0IGRtYV9idWYgKmRtYWJ1ZikNCj4+Pj4gMTcyIHsN
Cj4+Pj4gMTczwqDCoMKgwqDCoMKgwqDCoCBzdHJ1Y3QgZG1hX2J1Zl9zeXNmc19lbnRyeSAqc3lz
ZnNfZW50cnk7DQo+Pj4+IDE3NMKgwqDCoMKgwqDCoMKgwqAgaW50IHJldDsNCj4+Pj4gMTc1DQo+
Pj4+IDE3NsKgwqDCoMKgwqDCoMKgwqAgaWYgKCFkbWFidWYgfHwgIWRtYWJ1Zi0+ZmlsZSkNCj4+
Pj4gMTc3wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJuIC1FSU5WQUw7DQo+
Pj4+IDE3OA0KPj4+PiAxNznCoMKgwqDCoMKgwqDCoMKgIGlmICghZG1hYnVmLT5leHBfbmFtZSkg
ew0KPj4+PiAxODDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBwcl9lcnIoImV4cG9y
dGVyIG5hbWUgbXVzdCBub3QgYmUgZW1wdHkgaWYgc3RhdHMNCj4+Pj4gbmVlZGVkXG4iKTsNCj4+
Pj4gMTgxwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJuIC1FSU5WQUw7DQo+
Pj4+IDE4MsKgwqDCoMKgwqDCoMKgwqAgfQ0KPj4+PiAxODMNCj4+Pj4gMTg0wqDCoMKgwqDCoMKg
wqDCoCBzeXNmc19lbnRyeSA9IGt6YWxsb2Moc2l6ZW9mKHN0cnVjdCBkbWFfYnVmX3N5c2ZzX2Vu
dHJ5KSwNCj4+Pj4gR0ZQX0tFUk5FTCk7DQo+Pj4+IDE4NcKgwqDCoMKgwqDCoMKgwqAgaWYgKCFz
eXNmc19lbnRyeSkNCj4+Pj4gMTg2wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0
dXJuIC1FTk9NRU07DQo+Pj4+IDE4Nw0KPj4+PiAxODjCoMKgwqDCoMKgwqDCoMKgIHN5c2ZzX2Vu
dHJ5LT5rb2JqLmtzZXQgPSBkbWFfYnVmX3Blcl9idWZmZXJfc3RhdHNfa3NldDsNCj4+Pj4gMTg5
wqDCoMKgwqDCoMKgwqDCoCBzeXNmc19lbnRyeS0+ZG1hYnVmID0gZG1hYnVmOw0KPj4+PiAxOTAN
Cj4+Pj4gMTkxwqDCoMKgwqDCoMKgwqDCoCBkbWFidWYtPnN5c2ZzX2VudHJ5ID0gc3lzZnNfZW50
cnk7DQo+Pj4+IDE5Mg0KPj4+PiAxOTPCoMKgwqDCoMKgwqDCoMKgIC8qIGNyZWF0ZSB0aGUgZGly
ZWN0b3J5IGZvciBidWZmZXIgc3RhdHMgKi8NCj4+Pj4gMTk0wqDCoMKgwqDCoMKgwqDCoCByZXQg
PSBrb2JqZWN0X2luaXRfYW5kX2FkZCgmc3lzZnNfZW50cnktPmtvYmosDQo+Pj4+ICZkbWFfYnVm
X2t0eXBlLCBOVUxMLA0KPj4+PiAxOTXCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICIlbHUiLA0KPj4+PiBmaWxlX2lu
b2RlKGRtYWJ1Zi0+ZmlsZSktPmlfaW5vKTsNCj4+IEFoLCBzbyBpdCB1c2VzIHRoZSBpX2lubyBv
ZiB0aGUgZmlsZSBmb3IgdGhlIHN5c2ZzIHVuaXF1ZSBuYW1lLg0KPj4NCj4+IEknbSBnb2luZyB0
byB0YWtlIGFub3RoZXIgbG9vayBob3cgdG8gcHJvcGVybHkgY2xlYW4gdGhpcyB1cC4NCj4+DQo+
IEhvdyBhYm91dCBkZWxldGluZyB0aGUgZG1hYnVmIGZyb20gdGhlIGRiX2xpc3QgZGlyZWN0bHkg
aW4gdGhlIGVycm9yDQo+IHBhdGggKHdoaWNoIGlzIHVzdWFsbHkgZG9uZSBieSB0aGUgZnB1dCgp
KSBhbmQgdGhlbiBjb250aW51ZSB3aXRoIHRoZQ0KPiBub3JtYWwgZnB1dCgpIGhlcmUuDQoNCk5v
LCB0aGF0J3Mgbm90IHJlYWxseSBjbGVhbiBlaXRoZXIuDQoNCkdpdmUgbWUgMTAgTWludXRlcywg
Z29pbmcgdG8gY29tZSB1cCB3aXRoIHNvbWV0aGluZy4NCg0KUmVnYXJkcywNCkNocmlzdGlhbi4N
Cg0KPg0KPiBKdXN0IGNvbXBpbGUgdGVzdGVkIHRoZSBiZWxvdyBjb2RlIGFuZCBJZiB0aGUgbG9n
aWMgbWFrZSBzZW5zZSBmb3IgeW91LA0KPiB3aWxsIHNlbmQgdGhlIGZpbmFsIHRlc3RlZCBwYXRj
aC4NCj4gLS0tLS0tLS0tLS0tLS0tLS0tLS0tLT48LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tDQo+DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvZG1h
LWJ1Zi5jIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYw0KPiBpbmRleCBlNmYzNmMwLi4xMGEx
NzI3IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jDQo+ICsrKyBiL2Ry
aXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMNCj4gQEAgLTg3LDE5ICs4NywyOCBAQCBzdGF0aWMgdm9p
ZCBkbWFfYnVmX3JlbGVhc2Uoc3RydWN0IGRlbnRyeSAqZGVudHJ5KQ0KPiAgICAgICAgICBrZnJl
ZShkbWFidWYpOw0KPiAgIH0NCj4NCj4gLXN0YXRpYyBpbnQgZG1hX2J1Zl9maWxlX3JlbGVhc2Uo
c3RydWN0IGlub2RlICppbm9kZSwgc3RydWN0IGZpbGUgKmZpbGUpDQo+ICtzdGF0aWMgdm9pZCBk
bWFfYnVmX2RiX2xpc3RfcmVtb3ZlKHN0cnVjdCBmaWxlICpmaWxlKQ0KPiAgIHsNCj4gICAgICAg
ICAgc3RydWN0IGRtYV9idWYgKmRtYWJ1ZjsNCj4NCj4gLSAgICAgICBpZiAoIWlzX2RtYV9idWZf
ZmlsZShmaWxlKSkNCj4gLSAgICAgICAgICAgICAgIHJldHVybiAtRUlOVkFMOw0KPiAtDQo+ICAg
ICAgICAgIGRtYWJ1ZiA9IGZpbGUtPnByaXZhdGVfZGF0YTsNCj4gKyAgICAgICBpZiAoIWRtYWJ1
ZikNCj4gKyAgICAgICAgICAgICAgIHJldHVybjsNCj4NCj4gICAgICAgICAgbXV0ZXhfbG9jaygm
ZGJfbGlzdC5sb2NrKTsNCj4gICAgICAgICAgbGlzdF9kZWwoJmRtYWJ1Zi0+bGlzdF9ub2RlKTsN
Cj4gICAgICAgICAgbXV0ZXhfdW5sb2NrKCZkYl9saXN0LmxvY2spOw0KPg0KPiArICAgICAgIGZp
bGUtPnByaXZhdGVfZGF0YSA9IE5VTEw7DQo+ICt9DQo+ICsNCj4gK3N0YXRpYyBpbnQgZG1hX2J1
Zl9maWxlX3JlbGVhc2Uoc3RydWN0IGlub2RlICppbm9kZSwgc3RydWN0IGZpbGUgKmZpbGUpDQo+
ICt7DQo+ICsgICAgICAgaWYgKCFpc19kbWFfYnVmX2ZpbGUoZmlsZSkpDQo+ICsgICAgICAgICAg
ICAgICByZXR1cm4gLUVJTlZBTDsNCj4gKw0KPiArICAgICAgIGRtYV9idWZfZGJfbGlzdF9yZW1v
dmUoZmlsZSk7DQo+ICsNCj4gICAgICAgICAgcmV0dXJuIDA7DQo+ICAgfQ0KPg0KPiBAQCAtNjg4
LDYgKzY5Nyw4IEBAIHN0cnVjdCBkbWFfYnVmICpkbWFfYnVmX2V4cG9ydChjb25zdCBzdHJ1Y3QN
Cj4gZG1hX2J1Zl9leHBvcnRfaW5mbyAqZXhwX2luZm8pDQo+ICAgICAgICAgICAqIGVhcmx5IGJl
Zm9yZSBjYWxsaW5nIHRoZSByZWxlYXNlKCkgZG1hX2J1ZiBvcC4NCj4gICAgICAgICAgICovDQo+
ICAgICAgICAgIGZpbGUtPmZfcGF0aC5kZW50cnktPmRfZnNkYXRhID0gTlVMTDsNCj4gKw0KPiAr
ICAgICAgIGRtYV9idWZfZGJfbGlzdF9yZW1vdmUoZmlsZSk7DQo+ICAgICAgICAgIGZwdXQoZmls
ZSk7DQo+ICAgZXJyX2RtYWJ1ZjoNCj4gICAgICAgICAga2ZyZWUoZG1hYnVmKTsNCj4NCj4gLS0t
LS0tLS0tLS0tLS0tLS0tLS0+PC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tDQo+DQo+DQo+
PiBUaGFua3MgZm9yIHBvaW50aW5nIHRoaXMgb3V0LA0KPj4gQ2hyaXN0aWFuLg0KDQpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1h
aWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3Jp
YmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
